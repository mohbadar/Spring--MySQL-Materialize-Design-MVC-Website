package com.application.service;

import com.application.model.Announcement;
import com.application.repository.AnnouncementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class AnnouncementService {

    @Autowired
    private AnnouncementRepository announcementRepository;

    public Iterable<Announcement> select()
    {
        return announcementRepository.findAll();
    }

    public boolean insert(Announcement announcement)
    {
        if(announcementRepository.save(announcement) == null){
            return false;
        };

        return true;
    }

    public boolean delete(int id)
    {
        announcementRepository.delete(id);
        return true;
    }


    public Announcement find(int id)
    {
        return announcementRepository.findOne(id);
    }

}
