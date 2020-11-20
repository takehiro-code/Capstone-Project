package com.cantech.cannect.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.cantech.cannect.DataParsing;
import com.cantech.cannect.R;
import com.cantech.cannect.SharedPref;
import com.github.anastr.speedviewlib.Speedometer;
import com.github.anastr.speedviewlib.components.Section;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link Coolant_temp_fragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class Coolant_temp_fragment extends Fragment {

    static final String TAG = "Coolant Temp Fragment";
    private Context mContext;
    SharedPref sharedPref;
    private DataParsing dataParsing;
    private StringBuilder data_message;
    Speedometer coolantTemp;
    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public Coolant_temp_fragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment Coolant_temp_fragment.
     */
    // TODO: Rename and change types and number of parameters
    public static Coolant_temp_fragment newInstance(String param1, String param2) {
        Coolant_temp_fragment fragment = new Coolant_temp_fragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        sharedPref = new SharedPref(mContext);
        //set theme
        if(sharedPref.loadDarkModeState()==true){
            mContext.getTheme().applyStyle(R.style.darkTheme, true);
        }else{

            mContext.getTheme().applyStyle(R.style.AppTheme, true);
        }
        super.onCreate(savedInstanceState);
        data_message = new StringBuilder();
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        Log.d(TAG, "onCreateView started");
        LocalBroadcastManager.getInstance(mContext).registerReceiver(mReceiver, new IntentFilter("incomingMessage"));
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.fragment_coolant_temp, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        coolantTemp = (Speedometer) view.findViewById(R.id.coolantTempView);
        coolantTemp.clearSections();
        coolantTemp.addSections(
                new Section(0f, 0.85f, Color.GRAY),
                new Section(0.85f, 1f, Color.RED)
        );
        coolantTemp.setSpeedometerWidth(30);
    }

    BroadcastReceiver mReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            //needs to be modified, received value is a string. also add multiple datasets
            String text = intent.getStringExtra("theMessage");
            data_message.append(text + "\n");
            String[] parsed = dataParsing.convertOBD2FrameToUserFormat(data_message.toString());
            Log.d(TAG, parsed[0]);
            try {
                switch (parsed[0]) {

                    case "ENGINE COOLANT TEMP":
                        //changing string to float.
                        coolantTemp.speedTo(Float.parseFloat(parsed[1]));
                        break;

                    default:
                        break;
                }
            }catch (Exception e){
                e.printStackTrace();
            }

            if (data_message.length()>=32){
                data_message.setLength(0);
            }
        }
    };

    @Override
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        mContext = context;
    }

    @Override
    public void onDetach() {
        super.onDetach();
        mContext = null;
    }

    @Override
    public void onResume() {
        super.onResume();
        LocalBroadcastManager.getInstance(mContext).registerReceiver(mReceiver, new IntentFilter("incomingMessage"));
    }

    @Override
    public void onPause() {
        super.onPause();
        LocalBroadcastManager.getInstance(mContext).unregisterReceiver(mReceiver);
    }
}