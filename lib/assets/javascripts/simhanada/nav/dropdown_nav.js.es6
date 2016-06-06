class DropdownNav {

  constructor(parent) {
    this._initVariables(parent);
    this._addEventListener();
  }

  show() {
    if (this._state !== this._menuOpen) {
      this._parent.classList.add(this._activeClassName);
      this._state = this._menuOpen;
    }
  }

  hide() {
    if (this._state !== this._menuClosed) {
      this._parent.classList.remove(this._activeClassName);
      this._link.focus();
      this._state = this._menuClosed;
    }
  }

  toggle() {
    this[this._state === this._menuClosed ? 'show' : 'hide']();
  }

  _initVariables(parent) {
    this._parent = parent;
    this._activeClassName = 'dropdown-nav--active';
    this._menuOpen = 0;
    this._menuClosed = 1;
    this._menuLinkSelector = '.dropdown-nav__toggle-link';

    this._state = this._menuClosed;
    this._link = this._parent.querySelector(this._menuLinkSelector);
  }

  _addEventListener() {
    this._link.addEventListener('click', e => this._toggleEvent(e));
  }

  _toggleEvent(event) {
    event.stopPropagation();
    event.preventDefault();
    this.toggle();
  }
}