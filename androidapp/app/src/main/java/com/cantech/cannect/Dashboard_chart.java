package com.cantech.cannect;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;


import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;

import com.google.android.material.bottomnavigation.BottomNavigationView;

import androidx.localbroadcastmanager.content.LocalBroadcastManager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Color;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.Toast;


import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class Dashboard_chart extends AppCompatActivity {

    StringBuilder messages;
    DataParsing dataParsing;


    private LineChart mChart;
    private Spinner spinner;
    private boolean plotData = true;
    List<Entry> data;
    LineDataSet lineDataSet;
    LineData lineData;
    XAxis xl;
    YAxis leftAxis;
    YAxis rightAxis;

    String toDisplay = "VEHICLE SPEED";
    String previousPID = "";
    String BTPIDs = "";
    boolean flag = false;
    boolean once = true; //for deleting the (0, 0) input.

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dashboard_chart);

        getSupportActionBar().setTitle("Dashboard");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        messages = new StringBuilder();
        dataParsing = new DataParsing();

        data =  new ArrayList<>();
        data.add(new Entry(0,0));
        lineDataSet = new LineDataSet(data, toDisplay);
        lineData = new LineData(lineDataSet);

        lineDataSet.setAxisDependency(YAxis.AxisDependency.LEFT);
        lineDataSet.setLineWidth(1f);
        lineDataSet.setHighlightEnabled(false);
        lineDataSet.setDrawValues(false);
        lineDataSet.setDrawCircles(false);

        mChart = findViewById(R.id.chart1);
        spinner = findViewById(R.id.spinner1);
        mChart.setData(lineData);
        previousPID = toDisplay;





        ArrayAdapter<String> adapter = new ArrayAdapter<>(this,
                android.R.layout.simple_spinner_dropdown_item, getResources().getStringArray(R.array.PIDs));
        spinner.setAdapter(adapter);

        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                toDisplay = adapterView.getItemAtPosition(i).toString();
                reDesignChart(lineDataSet, toDisplay);
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });
        // enable touch gestures
        mChart.setTouchEnabled(true);

        // enable scaling and dragging
        mChart.setDragEnabled(true);
        mChart.setScaleEnabled(true);
        mChart.setDrawGridBackground(false);

        // if disabled, scaling can be done on x- and y-axis separately
        mChart.setPinchZoom(true);

        // set an alternative background color
        mChart.setBackgroundColor(Color.BLACK);


        Legend l = mChart.getLegend();

        // modify the legend ...
        l.setForm(Legend.LegendForm.LINE);
        l.setTextColor(Color.WHITE);
        l.setWordWrapEnabled(true);


        xl = mChart.getXAxis();
        leftAxis = mChart.getAxisLeft();
        rightAxis = mChart.getAxisRight();

        xl.setTextColor(Color.WHITE);
        xl.setSpaceMax(1);
        xl.setSpaceMin(1);
        xl.setDrawGridLines(false);
        xl.setAvoidFirstLastClipping(true);
        xl.setEnabled(true);

        leftAxis.setTextColor(Color.WHITE);
        leftAxis.setDrawGridLines(false);
        leftAxis.setAxisMaximum(100f);
        leftAxis.setAxisMinimum(0f);
        leftAxis.setDrawGridLines(true);

        rightAxis.setEnabled(false);

        mChart.getAxisLeft().setDrawGridLines(true);
        mChart.getXAxis().setDrawGridLines(true);
        mChart.setDrawBorders(true);


        Thread t = new Thread(){
            public void run(){
                flag = false;
                Intent sendingMessageIntent = new Intent("sendingMessage");
                do {
                    sendingMessageIntent.putExtra("theMessage", "01 " + BTPIDs  + ">");
                    LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(sendingMessageIntent);
                    Log.d("chart", BTPIDs);
                    try {
                        Thread.sleep(1500);
                    } catch (InterruptedException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();
                    }
                } while (!flag);
            }
        };
        t.start();

        //below code is for page navigation
        //initialize and assign variable
        BottomNavigationView bottomNavigationView = findViewById(R.id.bottom_navigation);

        //Set Table selected
        bottomNavigationView.setSelectedItemId(R.id.Chart);

        //perform itemselectedlistener
        bottomNavigationView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
                switch (menuItem.getItemId()){
                    case R.id.Table:
                        startActivity(new Intent(getApplicationContext(),Dashboard.class));
                        overridePendingTransition(0,0);
                        return true;
                    case R.id.Chart:
                        return true;
                    case R.id.Gauge:
                        startActivity(new Intent(getApplicationContext(),Dashboard_gauge.class));
                        overridePendingTransition(0,0);
                        return true;
                }
                return false;
            }
        });
    }







    BroadcastReceiver mReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String text = intent.getStringExtra("theMessage");
            StringBuilder data_message;
            messages.append(text + "\n");
            String[] parsed = dataParsing.convertOBD2FrameToUserFormat(messages.toString());

            float value;
            try {
                if (!parsed[1].equals("UNDEFINED")) {
                    value = Float.parseFloat(parsed[1]);

                } else {
                    System.out.println("UNDEFINED string received ...");
                    value = 0;
                }
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("Invalid conversion of value to float ...");
                value = 0;
            }


            if(previousPID.equals(toDisplay)) {
                if(parsed[0].equals(toDisplay)) {
                    data.add(new Entry(lineDataSet.getEntryCount(), value));
                    if(once) {
                        data.remove(0);
                    }
                    once = false;
                    lineDataSet.notifyDataSetChanged();
                    lineData.notifyDataChanged();
                    mChart.notifyDataSetChanged();
                    mChart.invalidate();
                    mChart.setVisibleXRangeMaximum(10);
                    // mChart.setVisibleYRange(30, AxisDependency.LEFT);
                    // move to the latest entry
                    mChart.moveViewToX(lineData.getEntryCount());
                }

            }else {
                data.clear();
                data.add(new Entry(0,0));
                lineDataSet.clear();
                once = true;
                lineDataSet = new LineDataSet(data, toDisplay);
                data.add(new Entry(lineDataSet.getEntryCount(), value));
                reDesignChart(lineDataSet, toDisplay);
                lineData.clearValues();
                lineData.addDataSet(lineDataSet);
                mChart.setData(lineData);
                lineDataSet.notifyDataSetChanged();
                lineData.notifyDataChanged();
                mChart.notifyDataSetChanged();
                mChart.invalidate();
                System.out.println("Array size");
                System.out.println(lineDataSet.getEntryCount());
                previousPID = toDisplay;
            }

            if (messages.length() >= 38) {
                messages.setLength(0);
            }
        }
    };

    protected  void reDesignChart(LineDataSet toChange, String str){
        toChange.setAxisDependency(YAxis.AxisDependency.LEFT);
        toChange.setLineWidth(1f);
        toChange.setHighlightEnabled(false);
        toChange.setDrawValues(false);
        toChange.setDrawCircles(false);
        switch (str){
            case "ENGINE COOLANT TEMP":
                leftAxis.setAxisMaximum(100f);
                leftAxis.setAxisMinimum(-40f);
                lineDataSet.setColor(getResources().getColor(R.color.debug_red));
                lineDataSet.notifyDataSetChanged();
                BTPIDs = "05 ";
                break;
            case "VEHICLE SPEED":
                leftAxis.setAxisMaximum(255f);
                leftAxis.setAxisMinimum(0f);
                lineDataSet.setColor(getResources().getColor(R.color.debug_blue));
                lineDataSet.notifyDataSetChanged();
                BTPIDs = "0D ";
                break;
            case "ENGINE RPM":
                leftAxis.setAxisMaximum(10000f);
                leftAxis.setAxisMinimum(0f);
                lineDataSet.setColor(getResources().getColor(R.color.debug_green));
                lineDataSet.notifyDataSetChanged();
                BTPIDs = "0C ";
                break;

            case "MAF SENSOR":
                leftAxis.setAxisMinimum(0f);
                leftAxis.setAxisMaximum(100f);
                lineDataSet.setColor(getResources().getColor(R.color.LightCyan));
                lineDataSet.notifyDataSetChanged();
                BTPIDs = "10 ";
                break;
            case "ENGINE OIL TEMPERATURE":
                leftAxis.setAxisMinimum(-50f);
                leftAxis.setAxisMaximum(210f);
                BTPIDs = "5C ";
                break;
            case "INTAKE AIR TEMPERATURE":
                leftAxis.setAxisMinimum(-50f);
                leftAxis.setAxisMaximum(100f);
                BTPIDs = "0F ";
                break;
            case "THROTTLE POSITION":
                leftAxis.setAxisMinimum(0f);
                leftAxis.setAxisMaximum(100f);
                BTPIDs = "11 ";
                break;
            case "ABSOLUTE ENGINE LOAD":
                leftAxis.setAxisMinimum(0f);
                leftAxis.setAxisMaximum(100f);
                BTPIDs = "43 ";
                break;
            case "CALCULATED ENGINE LOAD":
                leftAxis.setAxisMinimum(0f);
                leftAxis.setAxisMaximum(100f);
                BTPIDs = "04 ";
                break;
            case "DEMAND ENGINE TORQUE":
                leftAxis.setAxisMinimum(-125f);
                leftAxis.setAxisMaximum(130f);
                BTPIDs = "61 ";
                break;
            case "FUEL PRESSURE":
                leftAxis.setAxisMaximum(765f);
                leftAxis.setAxisMinimum(0f);
                BTPIDs = "0A ";
                break;
            case "ACTUAL ENGINE TORQUE":
                leftAxis.setAxisMinimum(-125f);
                leftAxis.setAxisMaximum(130f);
                BTPIDs = "62 ";
                break;
            default:
                leftAxis.setAxisMaximum(100f);
                leftAxis.setAxisMinimum(0f);
                break;
        }

    }

    // called whenever Dashboard visited
    @Override
    protected void onResume() {
        super.onResume();
        flag = false;
        //register broadcast receiver
        LocalBroadcastManager.getInstance(this).registerReceiver(mReceiver, new IntentFilter("incomingMessage"));
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        overridePendingTransition(0, 0);
        startActivity(getIntent());
        overridePendingTransition(0, 0);
    }

    // called whenever Dashboard leaves
    @Override
    protected void onStop() {
        super.onStop();
        flag = true;
        LocalBroadcastManager.getInstance(this).unregisterReceiver(mReceiver);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }
}