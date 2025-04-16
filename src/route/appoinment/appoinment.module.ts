import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Subjects } from 'src/schema/subjects.entity';
import { AppoinmentController } from './appoinment.controller';
import { AppoinmentService } from './appoinment.service';


@Module({
  imports: [TypeOrmModule.forFeature([Subjects])],
  controllers: [AppoinmentController],
  providers: [AppoinmentService]
})
export class AppoinmentModule {}
