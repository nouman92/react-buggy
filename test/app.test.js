describe('React application home page', () => {
    it('Verify app link says learn react', () => {
        browser.url('/');
        let text = $(".App-link").getText(); 
        console.log(text);
        assert.equal(text, 'Learn React');
    })
})