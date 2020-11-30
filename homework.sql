/*

Student(*sid, name, standing, *fid),
	foreign key (fac_fid) references Faculty(fid));

Enrolled-in(*sid, *class_section#, *class_semester, grade),
	foreign key (sid) references Student(sid),
	foreign key (class_section#, class_semester) references Class(section#, semester));

Class(*semester, *section#, room, schedule, *course_number, *fac_fid),
	primary key (semester, section#, course_number, fac_fid),
	foreign key (fac_fid) references Faculty(fid),
	foreign key (course_number) references Course(number));

Faculty(*fid, name, rank, *dname),
	foreign key (dname) references Dept(dname));

Instance-of(room, *section#, *semester, schedule, *course_number),
	primary key (section#, semester, course_number),
	foreign key (course_number) references Course(number));

Can-teach(*fid, course_number),
	foreign key (fid) references Faculty(fid),
	foreign key (course_number) references Course(number));

Belongs-to(*fid, *dname),
	foreign key (fid) references Faculty(fid),
	foreign key (dname) references Dept(dname));

Course(*number, title)

Offered-by(course_title, *number, *dept_dname),
	primary key (number, dept_dname), 
	foreign key (dept_dname) references Dept(dname));

Dept(*dname)

*/
