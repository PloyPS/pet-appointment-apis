import { BadRequestException, Body, Controller, Get, HttpException, InternalServerErrorException, Post, Query, Request } from '@nestjs/common';
import { JwtPayload } from 'src/interface/jwt.interface';
import { UsersService } from './users.service';
import logger from 'src/logger/pino.logger';

@Controller('users')
export class UsersController {
    constructor(private usersService: UsersService) { }
    
    @Get('profile')
    async getAllActions() {
        try {
            return {
                status: true,
                message: 'OK',
                actions: await this.usersService.getUser(),
            };
        } catch (error) {
            throw error;
        }
    }

    @Post('save')
    async saveUser(@Body() user: any) {
        try {
            return {
                status: true,
                message: 'OK',
                user: await this.usersService.saveUser(user),
            };
        } catch (error) {
            throw error;
        }
    }

    @Post('save-pets')
    async savePets(@Body() pets: any) {
        try {
            return {
                status: true,
                message: 'OK',
                user: await this.usersService.savePet(pets),
            };
        } catch (error) {
            throw error;
        }
    }

    @Get('pets')
    async getAllPets(@Query('userId') userId: number) {
      if (!userId) {
        throw new BadRequestException('User ID is required');
      }
  
      const pets = await this.usersService.getPetsByUserId(userId);
      return {
        status: true,
        message: 'OK',
        pets: pets,
      };
    }
    
    @Get('price')
    async getAllPrice() {
        try {
            return {
                status: true,
                message: 'OK',
                price: await this.usersService.getPrice(),
            };
        } catch (error) {
            throw error;
        }
    }

    @Get('animals-type')
    async getAnimalsType() {
        try {
            return {
                status: true,
                message: 'OK',
                animailType: await this.usersService.getAnimalsType(),
            };
        } catch (error) {
            throw error;
        }
    }

    @Get('weight')
    async getWeight(@Query('petWeightId') petWeightId: number) {
        try {
            if (!petWeightId) {
                throw new Error('petWeightId is required');
            }
            
            const weight = await this.usersService.getWeight(petWeightId);
            
            return {
                status: true,
                message: 'OK',
                weight: weight,
            };
        } catch (error) {
            throw error;
        }
    }    

}
