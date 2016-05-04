package com.bingo.site.service.user;

import com.bingo.site.domain.User;
import com.bingo.site.domain.UserCreateForm;

import java.util.Collection;
import java.util.Optional;

public interface UserService {

    Optional<User> getUserById(long id);

    Optional<User> getUserByEmail(String email);

    Collection<User> getAllUsers();

    User create(UserCreateForm form);

}
