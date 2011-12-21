@app = window.app ? {}

jQuery ->

    bytes = [
        new app.SoundByte {
            title: 'Gruber Eating'
            filename: 'gruber-eating'
            show: 'The Talk Show'
            url: 'http://5by5.tv/talkshow'
            speaker: 'Gruber'
        }
        new app.SoundByte {
            title: "Hi I'm Merlin Mann!"
            filename: 'hi-im-merlin'
            show: 'Back to Work'
            url: 'http://5by5.tv/b2w'
            speaker: 'Dan'
        }
        new app.SoundByte {
            title: 'Bulk Bag'
            filename: 'bulkbag'
            show: 'Back to Work'
            url: 'http://5by5.tv/b2w'
            speaker: 'Dan'
        }
        new app.SoundByte {
            title: 'Terp-stra'
            filename: 'terpstra'
            show: 'Back to Work'
            url: 'http://5by5.tv/b2w'
            speaker: 'Dan'
        }
        new app.SoundByte {
            title: 'Hi!'
            filename: 'hi'
            show: 'Back to Work'
            url: 'http://5by5.tv/b2w'
            speaker: 'Merlin'
        }
        new app.SoundByte {
            title: 'Big Week!'
            filename: 'bigweek'
            show: 'Back to Work'
            url: 'http://5by5.tv/b2w'
            speaker: 'Dan'
        }
        new app.SoundByte {
            title: 'We Make the Internet Work'
            filename: 'wemaketheinternet'
            show: 'Back to Work'
            url: 'http://5by5.tv/b2w'
            speaker: 'Dan'
        }
        new app.SoundByte {
            title: 'Can I Aks You a Queshon?'
            filename: 'aksquestion'
            show: 'Back to Work'
            url: 'http://5by5.tv/b2w'
            speaker: 'Merlin'
        }
        new app.SoundByte {
            title: '*Giggle*'
            filename: 'merlingiggle'
            show: 'Back to Work'
            url: 'http://5by5.tv/b2w'
            speaker: 'Merlin'
        }
    ]

    @app.SoundBytes.add bytes

    @app.router = new app.AppRouter()
    if Modernizr.history
        Backbone.history.start({pushState: true})
    else
        Backbone.history.start()
    
