function plan = buildfile
 
plan = buildplan(localfunctions);
plan.DefaultTasks = "my";
 
end
 
function myTask(~)
    disp('Hello World!')
    error('my error')
end
% function plan = buildfile
% % Create a plan from the task functions
% plan = buildplan(localfunctions);
% 
% % Make the "archive" task the default task in the plan
% plan.DefaultTasks = "archive";
% 
% % Make the "archive" task dependent on the "check" and "test" tasks
% plan("archive").Dependencies = ["check" "test"];
% end
% 
% function checkTask(~)
% % Identify code issues
% % issues = codeIssues;
% % assert(isempty(issues.Issues),formattedDisplayText( ...
% %    issues.Issues(:,["Location" "Severity" "Description"])))
% disp('In check task');
% end
% 
% function testTask(~)
% % Run unit tests
% % results = runtests(IncludeSubfolders=true,OutputDetail="terse");
% % assertSuccess(results);
% disp('In test task');
% end
% 
% function archiveTask(~)
% % Create ZIP file
% % zipFileName = "source_" + ...
% %     string(datetime("now",Format="yyyyMMdd'T'HHmmss"));
% % zip(zipFileName,"*")
% disp('In archive task');
% end