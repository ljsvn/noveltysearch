--delete t_organization
go
insert into t_subject_class
           (subject_class_pk,
            father_pk,
            father_pk_all,
            subject_class_name,
            delete_type,
            create_org_pk,
            create_user_pk,
            create_time)
values     ('00000000-0000-0000-0000-000000000001',
            '-1',
            '00000000-0000-0000-0000-000000000001',
            '��������������Ϣ��������',
            0,
            '00000000-0000-0000-0000-000000000000',
            '00000000-0000-0000-0000-000000000000',
            convert(varchar,Getdate(),120))
go


--delete t_subject_class_weight
go
insert into t_subject_class_weight
           (subject_class_weight_pk,
            subject_class_name,
            delete_type,
            create_org_pk,
            create_user_pk,
            create_time)
values     ('00000000-0000-0000-0000-000000000001',
            '0.8',
            0,
            '00000000-0000-0000-0000-000000000000',
            '00000000-0000-0000-0000-000000000000',
            convert(varchar,Getdate(),120))
go