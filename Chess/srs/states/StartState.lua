StartState = Class{__includes = BaseState}
local highlighted = 1
function StartState:update(dt)
	if love.keyboard.wasPressed('up') or love.keyboard.wasPressed('down') then
		highlighted = highlighted == 1 and 2 or 1
	end
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        if highlighted == 1 then
            gStateMachine:change('PlayState', {
                highScores = self.highScores
            })
        else
            gStateMachine:change('high-scores', {
                highScores = self.highScores
            })
        end
    end

	if love.keyboard.wasPressed('escape') then
		love.event.quit()
	end
end
function StartState:render()
	love.graphics.setFont(gFonts['large'])
	love.graphics.printf("Chess", 0, VIRTUAL_HEIGHT / 3,
	 VIRTUAL_WIDTH, 'center')
	love.graphics.setFont(gFonts['medium'])
	if highlighted == 1 then
		love.graphics.setColor(103, 255, 255, 255)
	end
	love.graphics.printf("BEGIN", 0, VIRTUAL_HEIGHT / 2 + 70,
	 VIRTUAL_WIDTH,'center')
	love.graphics.setColor(103, 255, 255, 255)
	if highlighted == 2 then
		love.graphics.setColor(103, 255, 255, 255)
	end
	love.graphics.printf("Unavailible", 0, VIRTUAL_HEIGHT / 2 + 90,
		VIRTUAL_WIDTH,'center')
	love.graphics.setColor(255, 255, 255, 255)
end