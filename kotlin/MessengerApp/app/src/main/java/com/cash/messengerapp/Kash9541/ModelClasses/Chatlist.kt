package com.cash.messengerapp.Kash9541.ModelClasses

class Chatlist
{
    private var id: String = ""

    constructor()



    constructor(id: String) {
        this.id = id
    }


    fun getId(): String?{
        return id
    }

    fun setId(id: String?) {
        this.id = id!!
    }
}