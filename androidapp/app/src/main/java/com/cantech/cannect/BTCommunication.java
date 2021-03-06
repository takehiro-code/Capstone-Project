package com.cantech.cannect;

import android.app.Application;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.SystemClock;


import androidx.annotation.NonNull;
import androidx.appcompat.widget.Toolbar;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;

//import com.cantech.cannect.Connect.ConnectedThread;
import com.cantech.cannect.Connect;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Set;
import java.util.UUID;

public class BTCommunication {
    public ConnectedThread mConnectedThread; // bluetooth background worker thread to send and receive data
    private static Handler mHandler;
    private static final UUID BTMODULEUUID = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");

    // #defines for identifying shared types between calling functions
    private final static int REQUEST_ENABLE_BT = 1; // used to identify adding bluetooth names
    private final static int MESSAGE_READ = 2; // used in bluetooth handler to identify message update
    private final static int CONNECTING_STATUS = 3; // used in bluetooth handler to identify message status


    public BluetoothSocket createBluetoothSocket(BluetoothDevice device) throws IOException {
        return  device.createRfcommSocketToServiceRecord(BTMODULEUUID);
        //creates secure outgoing connection with BT device using UUID
    }

    public static final class ConnectedThread extends Thread {
        private final BluetoothSocket mmSocket;
        public final InputStream mmInStream;
        private final OutputStream mmOutStream;
        private Context mContext;
        private String incomingMessage = "";

        public ConnectedThread(BluetoothSocket socket, Context context) {
            mContext = context;
            mmSocket = socket;
            InputStream tmpIn = null;
            OutputStream tmpOut = null;

            //register broadcast receiver
            LocalBroadcastManager.getInstance(context)
                    .registerReceiver(mReceiver, new IntentFilter("sendingMessage"));

            // Get the input and output streams, using temp objects because
            // member streams are final
            try {
                tmpIn = socket.getInputStream();
                tmpOut = socket.getOutputStream();
            } catch (IOException e) { }

            mmInStream = tmpIn;
            mmOutStream = tmpOut;
        }

        public InputStream returnInStream(){

            return mmInStream;
        }

        public void run() {
            int bytes; // bytes returned from read()
            // Keep listening to the InputStream until an exception occurs
            while (true) {
                try {

                    // Read from the InputStream
                    // reads 1 byte of data which is  (ASCII code 55 is String '7')
                    int firstByte = mmInStream.read();
                    char firstChar = (char) firstByte;
                    incomingMessage += firstChar;

                    // found end message
                    if(incomingMessage.endsWith("255255")) {

                        SystemClock.sleep(10); //pause and wait for rest of data. Adjust this depending on your sending speed.
                        // clean white spaces. Without this, I got white bunch of spaces at the first.
                        incomingMessage = incomingMessage.trim();
                        System.out.println("Incoming message string below:");
                        System.out.println(incomingMessage);

                        if (incomingMessage.length() > 8) {
                            Intent incomingMessageIntent = new Intent("incomingMessage");
                            incomingMessageIntent.putExtra("theMessage", incomingMessage);
                            LocalBroadcastManager.getInstance(mContext).sendBroadcast(incomingMessageIntent);
                        } else {
                            System.out.println("Sending message less than 4 characters will not be sent ...");


                        }

                        // initialize String of incomingMessage after sending
                        incomingMessage = "";

                        //mHandler.obtainMessage(MESSAGE_READ, bytes, -1, buffer)
                        //        .sendToTarget(); // Send the obtained bytes to the UI activity
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                    break;
                }
            }
        }

        /* Call this from the main activity to send data to the remote device */
        public void write(String input) {
            byte[] bytes = input.getBytes();           //converts entered String into bytes
            try {
                mmOutStream.write(bytes);
            } catch (IOException e) { }
        }

        /* Call this from the main activity to shutdown the connection */
        public void cancel() {
            try {
                mmSocket.close();
            } catch (IOException e) { }
        }

        BroadcastReceiver mReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                String text = intent.getStringExtra("theMessage");
                write(text);
            }
        };
    }
}