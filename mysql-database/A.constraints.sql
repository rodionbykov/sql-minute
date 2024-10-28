ALTER TABLE emp_salaries ADD CONSTRAINT FK_salaries_employees FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE;

ALTER TABLE emp_titles ADD CONSTRAINT FK_titles_employees FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE;

ALTER TABLE loc_emp ADD CONSTRAINT FK_locations_employees FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE;

ALTER TABLE dept_emp ADD CONSTRAINT FK_departments_employees FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE;

ALTER TABLE dept_emp ADD CONSTRAINT FK_departments_departments FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE;

ALTER TABLE dept_manager ADD CONSTRAINT FK_departments_managers FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE;

ALTER TABLE dept_manager ADD CONSTRAINT FK_managers_departments FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE;

CREATE INDEX IX_employees_last_name ON employees (last_name);
