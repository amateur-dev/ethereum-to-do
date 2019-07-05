pragma solidity ^0.5.0;

contract TodoList {
    // state variables
    
    uint8 public taskCount = 0;

    struct Task {
        uint8 id;
        string content;
        uint8 status;
    }

    mapping (uint=>Task) public tasks;

    function createTask (string memory _content) public {
        taskCount ++;
        Task memory new_task = Task({
            id: taskCount,
            content: _content,
            status: 0
        });
        tasks[taskCount] = new_task;
    }
}