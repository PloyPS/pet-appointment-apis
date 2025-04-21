import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UsersController } from './route/users/users.controller';
import { UsersService } from './route/users/users.service';
import { UsersModule } from './route/users/users.module';
import { UserEntity } from './schema/users.entity';
import { join } from 'path';
import { AuthService } from './route/auth/auth.service';
import { AuthModule } from './route/auth/auth.module';
import { AuthController } from './route/auth/auth.controller';
import { Pets } from './schema/pets.entity';
import { Price } from './schema/price.entity';
import { AnimalsType } from './schema/animalTypes.entity';
import { Weight } from './schema/weight.entity';
import { AppoinmentService } from './route/appoinment/appoinment.service';
import { AppoinmentModule } from './route/appoinment/appoinment.module';
import { AppoinmentController } from './route/appoinment/appoinment.controller';
import { Subjects } from './schema/subjects.entity';

@Module({
  imports: [
TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'thzz882efnak0xod.cbetxkdyhwsb.us-east-1.rds.amazonaws.com',
      port: 3306,
      username: 'yi9ogh51xojpl4sd',
      password: 'y0wozn8zl2powrgq',
      database: 'x6hl9h10vnn09ywx',
      entities: [join(__dirname, '*', '.entity.{ts,js}')],
      synchronize: true,
    }),
    TypeOrmModule.forFeature([UserEntity, Pets, Price, AnimalsType, Weight, Subjects]),
    UsersModule,
    AuthModule,
    AppoinmentModule
  ],
  controllers: [AppController, UsersController, AuthController, AppoinmentController],
  providers: [AppService, UsersService, AuthService, AppoinmentService],
})
export class AppModule {}
