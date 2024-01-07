import type { Config } from 'jest';

const config: Config = {
	verbose: true,
	transform: {
		'^.+\\.tsx?$': 'ts-jest',
	},
	modulePathIgnorePatterns: ['./dist', './build'],
};

export default config;
