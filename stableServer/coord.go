package main

import (
    "sync"
)

type Coord struct {
    Lat float64
    Long float64
    Mutex sync.Mutex
}

func (coord *Coord) getLat() float64 {
    coord.mutexLock()
    return coord.Lat
}

func (coord *Coord) setLat(lat float64) {
    coord.mutexLock()
    coord.Lat = lat
}

func (coord *Coord) getLong() float64 {
    coord.mutexLock()
    return coord.Long
}

func (coord *Coord) setLong(long float64) {
    coord.mutexLock()
    coord.Long = long
}

func (coord *Coord) mutexLock() {
    coord.Mutex.Lock()
    defer coord.Mutex.Unlock()
}
