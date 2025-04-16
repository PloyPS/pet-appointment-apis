import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Subjects } from 'src/schema/subjects.entity';
import { Repository } from 'typeorm';


@Injectable()
export class AppoinmentService {
    @InjectRepository(Subjects)
    private readonly subjectsRepository: Repository<Subjects>;

    async getSubjects(): Promise<Subjects[]> {
        const subjects = await this.subjectsRepository.find();
        console.log(subjects);
        return subjects.filter(subject => subject.isDelete !== '1');    }
}
