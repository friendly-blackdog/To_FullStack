package com.cash.timefighter.cash410

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView


class MainActivity : AppCompatActivity() {

    internal var score = 0

    internal lateinit var tapMeButton: Button
    internal lateinit var gameScoreTextView: TextView
    internal lateinit var timeLeftTextView: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        tapMeButton = findViewById(R.id.tapMeButton)
        gameScoreTextView = findViewById(R.id.gameScoreTextView)
        timeLeftTextView = findViewById(R.id.timeLeftTextView)

        tapMeButton.setOnClickListener{ view ->
            incrementScore()
        }

        gameScoreTextView.text = getString(R.string.yourScore, score)
    }

    private fun incrementScore() {
        score += 1
        val newScore = getString(R.string.yourScore, score)
        gameScoreTextView.text = newScore
    }
}
