import { Tutorial } from './tutorial.model';
import {
  HttpClientTestingModule,
  HttpTestingController,
} from '@angular/common/http/testing';
import { HttpClientModule } from '@angular/common/http';
describe('Tutorial', () => {
  it('should create an instance', () => {
    expect(new Tutorial()).toBeTruthy();
  });
});
