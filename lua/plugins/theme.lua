--return { "navarasu/onedark.nvim", 
    --config = function() 
        --require('onedark').setup { 
            --style = 'darker' }; 
            --require('onedark').load(); end 
        --}, 

return { "blazkowolf/gruber-darker.nvim", 
    config= function()
        require('gruber-darker').setup();
        require('gruber-darker').load();
    end
} 

--return { "folke/tokyonight.nvim", 
    --lazy = false, 
    --priority = 1000 }
