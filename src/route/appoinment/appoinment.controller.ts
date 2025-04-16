import { Controller, Get } from '@nestjs/common';
import { AppoinmentService } from './appoinment.service';

@Controller('appoinment')
export class AppoinmentController {
    constructor(private appoinmentService: AppoinmentService) { }
    
    @Get('subject')
    async getAllActions() {
        try {
            return {
                status: true,
                message: 'OK',
                subjects: await this.appoinmentService.getSubjects(),
            };
        } catch (error) {
            throw error;
        }
    }
}
