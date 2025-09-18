use emprecords;

-- delimiter &&
-- create trigger Trigger_name | before or after  | insert or update or delete | on table_name 
-- for each row 
-- begin
-- statements like another_table dml; conditions
-- END&&
-- delimiter ;
-- Employees Table


-- Audit Log Table
CREATE TABLE AuditLog (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    action_type VARCHAR(20),
    emp_id INT,
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    action_time DATETIME DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$
create trigger insert_data after insert on employees 
for each row
begin
insert into AuditLog (action_type,emp_id,new_salary) values ("INSERT",new.emp_id,new.salary);
end$$
DELIMITER ;






