package com.bingo.site.service.currentuser;

import com.bingo.site.domain.CurrentUser;

public interface CurrentUserService {

    boolean canAccessUser(CurrentUser currentUser, Long userId);

}
