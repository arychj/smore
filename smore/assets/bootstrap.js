import { startStimulusApp } from '@symfony/stimulus-bridge';
import '@symfony/autoimport';

M.AutoInit();

// Registers Stimulus controllers from controllers.json and in the controllers/ directory
export const app = startStimulusApp(require.context('./controllers', true, /\.(j|t)sx?$/));
