package com.application.repository;

import com.application.model.Announcement;
import org.springframework.data.repository.CrudRepository;

public interface AnnouncementRepository extends CrudRepository<Announcement, Integer> {
}
