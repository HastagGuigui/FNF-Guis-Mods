-- this gets called starts when the level loads.
function start(song) -- arguments, the song name
    direction = 1
end

-- this gets called every frame
function update(elapsed) -- arguments, how long it took to complete a frame
    setActorAccelerationY(direction*50, "dad")
end

-- this gets called every beat
function beatHit(beat) -- arguments, the current beat of the song
    if direction == 1 then
    direction = -1
    elseif direction == -1 then
    direction = 1
    end

end

-- this gets called every step
function stepHit(step) -- arguments, the current step of the song (4 steps are in a beat)
    if step == 1 then
        setActorAccelerationY(100, 4)
        setActorAccelerationY(100, 0)
    end
    if step == 3 then
        setActorAccelerationY(100, 5)
        setActorAccelerationY(100, 1)
    end
    if step == 5 then
        setActorAccelerationY(100, 6)
        setActorAccelerationY(100, 2)
    end
    if step == 7 then
        setActorAccelerationY(100, 7)
        setActorAccelerationY(100, 3)
    end
    for i=0,7 do
        if getActorY(i) >= 100 then
        setActorY(100, i)
        setActorVelocityY(-100, i)
        end
    end
end