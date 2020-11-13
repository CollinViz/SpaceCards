extends Node

signal canCardMove(cardID)


func canCardMove(cardID):
    emit_signal("canCardMove",cardID)
