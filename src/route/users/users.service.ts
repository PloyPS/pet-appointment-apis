import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { UserEntity } from 'src/schema/users.entity';
import { Pets } from 'src/schema/pets.entity';
import { Price } from 'src/schema/price.entity';
import { AnimalsType } from 'src/schema/animalTypes.entity';
import { Weight } from 'src/schema/weight.entity';

@Injectable()
export class UsersService {
  constructor(
    @InjectRepository(UserEntity)
    private readonly userRepository: Repository<UserEntity>,
    
    @InjectRepository(Pets)
    private readonly petsRepository: Repository<Pets>,

    @InjectRepository(Price)
    private readonly priceRepository: Repository<Price>,

    @InjectRepository(AnimalsType)
    private readonly animalsTypeRepository: Repository<AnimalsType>,

    @InjectRepository(Weight)
    private readonly weightRepository: Repository<Weight>,

  ) {}

  async getUser(): Promise<UserEntity[]> {
    const users = await this.userRepository.find();
    console.log(users);
    return users;
  }

  async saveUser(user: UserEntity): Promise<UserEntity> {
    return await this.userRepository.save(user);
  }

  async savePet(pet: Pets): Promise<Pets> {
    return await this.petsRepository.save(pet);
  }

  async getPetsByUserId(userId: number): Promise<Pets[]> {
    const pets = await this.petsRepository.find({
        where: { userId: userId }, 
    });
    console.log('Pets for user:', userId, pets);
    return pets;
}

  async getPrice(): Promise<Price[]> {
    const price = await this.priceRepository.find();
    console.log(price);
    return price;
  }

  async getAnimalsType(): Promise<AnimalsType[]> {
    const animalsType = await this.animalsTypeRepository.find();
    console.log(animalsType);
    return animalsType;
  }

  async getWeight(petWeightId: number): Promise<Weight[]> {
    console.log('Searching for weight with petWeightId:', petWeightId);
    
    const weight = await this.weightRepository.findOne({
        where: { id: petWeightId }, 
    });
    
    console.log('Found weight:', weight);
    return weight ? [weight] : []; 
}


}
