'use strict';

const MessageBoard = class MessageBoard {
  constructor($elm, window) {
    if (!$elm) {
      return;
    }

    this.$elm = $elm;
    this.window = window;
  }

  showBusy() {
    this.$elm.classList.add('busy');
  }

  showIdle() {
    this.$elm.classList.remove('busy');
  }

  announceError(message) {
    this.update(message, 'message--error');
  }

  announceSuccess(message) {
    this.update(message, 'message--success');
  }

  update(message, cssClass = '') {
    this.$elm.innerHTML += `<div class="message ${cssClass}">${message}</div>`;
  }

  emitEvent(event) {
    this.window.dispatchEvent(event);
  }

  clear() {
    this.$elm.innerHTML = '';
  }
};

export { MessageBoard as default };
