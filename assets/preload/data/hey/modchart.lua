-- this gets called starts when the level loads.
function start(song) -- arguments, the song name
    defaultX = getActorX("dad")
    defaultY = getActorY("dad")
end

-- this gets called every frame
function update(elapsed) -- arguments, how long it took to complete a frame
    local currentBeat = (songPos / 1000)*(bpm/60)
    setActorX(defaultX + 32 * math.sin((currentBeat*0.25) * math.pi), "dad")
    setActorY(defaultY + 32 * math.cos((currentBeat*0.25) * math.pi), "dad")
end

-- this gets called every beat
function beatHit(beat) -- arguments, the current beat of the song
    local currentBeat = (songPos / 1000)*(bpm/60)

end

-- this gets called every step
function stepHit(step) -- arguments, the current step of the song (4 steps are in a beat)
    
end