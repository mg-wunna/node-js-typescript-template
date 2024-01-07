import sayHello from './say-hello';

describe('testing say hello function', () => {
	it('should say hello', () => {
		console.log = jest.fn();
		sayHello('Wunna');
		expect(console.log).toHaveBeenCalledWith('Hello Wunna');
	});
});
