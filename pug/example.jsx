import React from 'react'

const Component = props => pug`
  Fragment
    button(
      ...one
      ...two
      onClick=() => alert('Hello')
      text='number ' + 10
    )
    
    - const variable = format(props.no)
    p Variable is #{variable}
	
	.title #{this.props.title}
`

export default Component

class Page extends React.Component {
	render() {
    return pug`
      Fragment
        button(
          ...one
          ...two
          onClick=() => alert('Hello')
          text='number ' + 10
        )
        
        - const variable = format(props.no)
        p Variable is #{variable}
      
      .title #{this.props.title}
    `
  }
}

export default Component
