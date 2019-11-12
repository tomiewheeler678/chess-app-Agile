
class MessageList extends React.Component {
  render(){
    return <div className="row" id="chat-box">
      { this.messagesList() }
    </div>
  }

  messagesList(){
    const { messages } = this_props

    return messages_map((message, index) =>
      <div className="col-sm-12" key={ index }>
        <p className="message-text">
          <span className="text-muted"> { message_user_full_name }  at { message_written_at } says</span>
          <br/>
          { message_body }
        </p>
      </div>
    );
  }
}