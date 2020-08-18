package com.cantech.cannect;

        import android.Manifest;
        import android.content.Context;
        import android.content.Intent;
        import android.content.IntentFilter;
        import android.content.pm.PackageManager;
        import android.os.Bundle;
        import android.os.Handler;
        import android.os.Looper;
        import android.os.Message;
//import android.support.v4.app.ActivityCompat; // no longer support
//import android.support.v4.content.ContextCompat; // no longer support
//import android.support.v7.app.AppCompatActivity; // no longer support
        import android.util.Log;
        import android.view.View;
        import android.widget.AdapterView;
        import android.widget.ArrayAdapter;
        import android.widget.Button;
        import android.widget.ListView;
        import android.widget.TextView;
        import android.widget.Toast;

        import java.io.IOException;
        import java.io.UnsupportedEncodingException;
        import java.lang.reflect.Method;
        import java.util.Set;
        import java.util.UUID;

// added library to resolve "Cannot Resolve Symbol" Error
        import androidx.appcompat.app.AppCompatActivity;
        import androidx.core.content.ContextCompat;
        import androidx.core.app.ActivityCompat;


public class DataParsing extends AppCompatActivity{
    public static final String FUEL_STATUS = "03";
    public static final String ENGINE_COOLANT_TEMP = "05";
    public static final String FUEL_PRESSURE = "0A";
    public static final String ENGINE_RPM = "0C";
    public static final String VEHICLE_SPEED = "0D";
    public static final String MAF_SENSOR = "10";
    public static final String THROTTLE = "11";
    public static final String O2_VOLTAGE = "14";

    public static final String PID_CURRENT_DATA = "01";
    public static final String PID_FREEZE_DATA = "02";

    // OBD2 Stub Function for different Modes
    // Input a set of 8 segments separated by space (eg. "00 00 00 00 00 00 00 00")
    // Return: User friendly format (PID and actual value)
    public String[] convertOBD2FrameToUserFormat(String obd2message){
        String[] splitobd2msg = obd2message.split("\\s+");
        // # bytes: ix=0
        // Mode: ix=1
        // OBD2 PID: ix=2
        // OBD2 Data: ix=3 to 6
        // END: ix=7
        String[] result = {"",""};

        switch(splitobd2msg[1])
        {
            case PID_CURRENT_DATA:
                result = convertOBD2PIDToUserFormat(splitobd2msg);
                break;
            case PID_FREEZE_DATA:
                result = convertOBD2PIDToUserFormat(splitobd2msg);
                break;
            default:
                result[0] = "UNDEFINED";
                result[1] = "UNDEFINED";
        }

        return result;
    }

    // OBD2 Mode 1 and 2 PID Converter
    // Space separated array of strings containing OBD2 Message
    // Return: User friendly format (PID and actual value)
    private String[] convertOBD2PIDToUserFormat(String[] splitobd2msg)
    {
        String[] result = {"",""};
        switch(splitobd2msg[2])
        {
            case FUEL_STATUS:
                result[0] = FUEL_STATUS;
                result[1] = splitobd2msg[3]; // NEED BETTER SYSTEM TO ORGANIZE THIS
                break;
            case ENGINE_COOLANT_TEMP:
                result[0] = ENGINE_COOLANT_TEMP;
                result[1] = Integer.toString(Integer.parseInt(splitobd2msg[3]) - 40);
                break;
            case FUEL_PRESSURE:
                result[0] = FUEL_PRESSURE;

                break;
            case ENGINE_RPM:
                result[0] = ENGINE_RPM;
                result[1] = Integer.toString((Integer.parseInt(splitobd2msg[3]) * 256) + (Integer.parseInt(splitobd2msg[4]) / 4));
                break;
            case VEHICLE_SPEED:
                result[0] = VEHICLE_SPEED;
                result[1] = splitobd2msg[3];
                break;
            case MAF_SENSOR:
                result[0] = MAF_SENSOR;
                result[1] = Integer.toString((Integer.parseInt(splitobd2msg[3]) * 256) + (Integer.parseInt(splitobd2msg[4]) / 100));
                break;
            case THROTTLE:
                result[0] = THROTTLE;
                break;
            case O2_VOLTAGE:
                result[0] = O2_VOLTAGE;
                result[1] = Integer.toString((Integer.parseInt(splitobd2msg[3]) * 100) / 255);
                break;
            default:
                result[0] = "UNDEFINED: " + splitobd2msg[2];
                result[1] = "UNDEFINED: " + splitobd2msg[3] + " " + splitobd2msg[4] + " " + splitobd2msg[5] + " " + splitobd2msg[6];
        }

        return result;
    }
}
