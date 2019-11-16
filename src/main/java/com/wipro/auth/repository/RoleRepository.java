package com.wipro.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.auth.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

}
