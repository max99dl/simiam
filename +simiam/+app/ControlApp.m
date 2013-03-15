classdef ControlApp < handle

% Copyright (C) 2013, Georgia Tech Research Corporation
% see the LICENSE file included with this software
    
    properties
        supervisors
        timeout
        time
        goals
        index
        root
    end
    
    methods
        function obj = ControlApp(root)
            obj.supervisors = mcodekit.list.dl_list();
            obj.time = 0;
            obj.root = root;
        end
        
        function run(obj, dt)
            
        end
        
        function ui_press_mouse(obj, click_src)
            obj.supervisors.head_.key_.goal = click_src;
        end
    end
    
end