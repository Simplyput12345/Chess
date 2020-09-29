peices = Class{}

palletteColors = {
	-- blue
	[1] = {
        ['r'] = 99,
        ['g'] = 155,
        ['b'] = 255
    },
    -- green
    [2] = {
        ['r'] = 106,
        ['g'] = 190,
        ['b'] = 47
    },
    -- red
    [3] = {
        ['r'] = 217,
        ['g'] = 87,
        ['b'] = 99
    },
    -- gold
    [4] = {
    	['r'] = 251,
    	['g'] = 242,
    	['b'] = 54
    }
}

function peice:init(x, y)
	self.player1 = 1
	self.player2 = 2
	self.x1 = x
	self.y1 = y
	self.x2 = -x
	self.y2 = -y
	self.width = 48
	self.height = 48
	
	self.inPlay = true
end