package Beans;

public class Message {
	private String messageContent;
	private String messageType;
	private String cssDesign;
	public Message(String messageContent, String messageType, String cssDesign) {
		super();
		this.messageContent = messageContent;
		this.messageType = messageType;
		this.cssDesign = cssDesign;
	}
	public String getMessageContent() {
		return messageContent;
	}
	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}
	public String getMessageType() {
		return messageType;
	}
	public void setMessageType(String messageType) {
		this.messageType = messageType;
	}
	public String getCssDesign() {
		return cssDesign;
	}
	public void setCssDesign(String cssDesign) {
		this.cssDesign = cssDesign;
	}
	
}
