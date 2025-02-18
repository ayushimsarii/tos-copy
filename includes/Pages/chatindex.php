<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Chat</title>
    <style type="text/css">
        d, to get the result that you can see in the preview selection

body{
    background:#eee
}

.ks-page-content{
    margin-top:20px;    
}

.ks-messenger {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    height: 100%
}

.ks-messenger .ks-discussions {
    background: #fff;
    width: 340px;
    border-right: 1px solid #dee0e1
}

.ks-messenger .ks-discussions>.ks-search {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
    height: 60px;
    border-bottom: 1px solid #dee0e1
}

.ks-messenger .ks-discussions>.ks-search>.input-icon {
    width: 100%
}

.ks-messenger .ks-discussions>.ks-search .form-control {
    border: none;
    padding: 28px 20px
}

.ks-messenger .ks-discussions>.ks-search .icon-addon {
    color: rgba(58, 82, 155, .6)
}

.ks-messenger .ks-discussions>.ks-body .ks-items {
    list-style: none;
    padding: 0;
    margin: 0
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item {
    border-bottom: 1px solid #dee0e1
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item>a {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
    color: #333;
    padding: 15px 20px
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item>a>.ks-group-amount {
    position: relative;
    top: 3px;
    margin-right: 12px;
    width: 36px;
    height: 36px;
    background-color: rgba(57, 81, 155, .1);
    text-align: center;
    line-height: 36px;
    -webkit-border-radius: 50%;
    border-radius: 50%
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item>a>.ks-group-amount>.ks-badge {
    position: absolute;
    bottom: -1px;
    right: -3px
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item>a>.ks-avatar {
    position: relative;
    top: 3px;
    margin-right: 12px
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item>a>.ks-avatar>img {
    width: 36px;
    height: 36px;
    -webkit-border-radius: 50%;
    border-radius: 50%
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item>a>.ks-avatar>.ks-badge {
    position: absolute;
    bottom: -3px;
    right: -3px
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item>a>.ks-body {
    -webkit-box-flex: 1;
    -webkit-flex-grow: 1;
    -ms-flex-positive: 1;
    flex-grow: 1
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item>a>.ks-body>.ks-message {
    font-size: 12px;
    color: #858585;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item>a>.ks-body>.ks-message>img {
    position: relative;
    top: -2px;
    width: 18px;
    height: 18px;
    margin-right: 5px
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item>a>.ks-body>.ks-name {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    margin-bottom: 4px;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -ms-flex-pack: justify;
    justify-content: space-between
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item>a>.ks-body>.ks-name>.ks-datetime {
    text-transform: uppercase;
    font-size: 10px;
    font-weight: 400;
    color: #858585;
    position: relative;
    top: 3px
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item.ks-active {
    background: #ebeef5;
    color: #333;
    position: relative
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item.ks-active::before {
    content: '';
    width: 4px;
    height: 100%;
    background: #d7dceb;
    display: block;
    position: absolute;
    top: 0;
    left: 0
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item.ks-active>a>.ks-group-amount {
    background-color: rgba(57, 81, 155, .1)
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item.ks-unread {
    background: rgba(247, 202, 24, .1)
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item.ks-unread>a>.ks-body>.ks-message {
    color: #333
}

.ks-messenger .ks-discussions>.ks-body .ks-items>.ks-item.ks-unread>a>.ks-group-amount {
    background-color: rgba(222, 187, 12, .2)
}

.ks-messenger .ks-messages,
.ks-messenger__messages {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-box-flex: 1;
    -webkit-flex-grow: 1;
    -ms-flex-positive: 1;
    flex-grow: 1;
    background: #fff
}

.ks-messenger .ks-messages>.ks-header,
.ks-messenger__messages>.ks-header {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
    height: 60px;
    border-bottom: 1px solid #dee0e1;
    padding: 9px 20px;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -ms-flex-pack: justify;
    justify-content: space-between
}

.ks-messenger .ks-messages>.ks-header>.ks-description>.ks-name,
.ks-messenger__messages>.ks-header>.ks-description>.ks-name {
    font-size: 14px;
    line-height: 14px;
    margin-bottom: 5px;
    font-weight: 500
}

.ks-messenger .ks-messages>.ks-header>.ks-description>.ks-amount,
.ks-messenger__messages>.ks-header>.ks-description>.ks-amount {
    color: #858585;
    font-size: 12px;
    line-height: 12px
}

.ks-messenger .ks-messages>.ks-body,
.ks-messenger__messages>.ks-body {
    -webkit-box-flex: 1;
    -webkit-flex-grow: 1;
    -ms-flex-positive: 1;
    flex-grow: 1
}

.ks-messenger .ks-messages>.ks-body .ks-items,
.ks-messenger__messages>.ks-body .ks-items {
    list-style: none;
    padding: 0;
    margin: 0;
    padding: 20px
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-separator,
.ks-messenger__messages>.ks-body .ks-items>.ks-separator {
    color: #858585;
    font-size: 10px;
    text-align: center;
    text-transform: uppercase;
    margin-bottom: 15px;
    margin-top: 15px
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item,
.ks-messenger__messages>.ks-body .ks-items>.ks-item {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    margin-bottom: 12px
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item:last-child,
.ks-messenger__messages>.ks-body .ks-items>.ks-item:last-child {
    margin-bottom: 0
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body {
    font-size: 12px;
    -webkit-box-flex: 1;
    -webkit-flex-grow: 1;
    -ms-flex-positive: 1;
    flex-grow: 1;
    padding: 12px 15px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    position: relative
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-header,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-header {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -ms-flex-pack: justify;
    justify-content: space-between;
    margin-bottom: 2px
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-header>.ks-name,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-header>.ks-name {
    font-weight: 500
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-header>.ks-datetime,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-header>.ks-datetime {
    font-size: 10px;
    text-transform: uppercase;
    color: #858585
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-link,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-link {
    position: relative;
    margin-top: 10px;
    padding-left: 12px
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-link:before,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-link:before {
    content: '';
    width: 4px;
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    background-color: rgba(57, 81, 155, .2)
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files {
    list-style: none;
    padding: 0;
    margin: 0
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file {
    float: left;
    margin-top: 15px;
    margin-right: 15px
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a {
    display: block;
    color: #333;
    vertical-align: top
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-info,
.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-thumb,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-info,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-thumb {
    float: left
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-thumb,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-thumb {
    margin-right: 5px;
    text-align: center
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-thumb>.ks-icon,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-thumb>.ks-icon {
    font-size: 36px;
    line-height: 36px
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-thumb>img,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-thumb>img {
    width: 36px;
    height: 36px;
    -webkit-border-radius: 2px;
    border-radius: 2px
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-info>.ks-name,
.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-info>.ks-size,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-info>.ks-name,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-info>.ks-size {
    display: block
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-info>.ks-name,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-info>.ks-name {
    font-size: 12px;
    margin-bottom: 2px
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-info>.ks-size,
.ks-messenger__messages>.ks-body .ks-items>.ks-item>.ks-body>.ks-message>.ks-files>.ks-file a>.ks-info>.ks-size {
    font-size: 10px;
    text-transform: uppercase;
    color: #858585
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item.ks-self>.ks-avatar,
.ks-messenger__messages>.ks-body .ks-items>.ks-item.ks-self>.ks-avatar {
    -webkit-box-ordinal-group: 2;
    -webkit-order: 1;
    -ms-flex-order: 1;
    order: 1
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item.ks-self>.ks-body,
.ks-messenger__messages>.ks-body .ks-items>.ks-item.ks-self>.ks-body {
    -webkit-box-ordinal-group: 3;
    -webkit-order: 2;
    -ms-flex-order: 2;
    order: 2;
    border: solid 1px #dee0e1;
    -webkit-border-top-left-radius: 0;
    border-top-left-radius: 0;
    margin-left: 14px;
    margin-right: 50px
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item.ks-self>.ks-body:before,
.ks-messenger__messages>.ks-body .ks-items>.ks-item.ks-self>.ks-body:before {
    content: '';
    display: block;
    position: absolute;
    left: -10px;
    top: -1px;
    width: 0;
    height: 0;
    border-top: 10px solid #dee0e1;
    border-right: 0 solid transparent;
    border-bottom: 0 solid transparent;
    border-left: 10px solid transparent
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item.ks-self>.ks-body:after,
.ks-messenger__messages>.ks-body .ks-items>.ks-item.ks-self>.ks-body:after {
    content: '';
    display: block;
    position: absolute;
    left: -8px;
    top: 0;
    width: 0;
    height: 0;
    border-top: 10px solid #fff;
    border-right: 0 solid transparent;
    border-bottom: 0 solid transparent;
    border-left: 10px solid transparent
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item.ks-from>.ks-avatar,
.ks-messenger__messages>.ks-body .ks-items>.ks-item.ks-from>.ks-avatar {
    -webkit-box-ordinal-group: 3;
    -webkit-order: 2;
    -ms-flex-order: 2;
    order: 2
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item.ks-from>.ks-body,
.ks-messenger__messages>.ks-body .ks-items>.ks-item.ks-from>.ks-body {
    -webkit-box-ordinal-group: 2;
    -webkit-order: 1;
    -ms-flex-order: 1;
    order: 1;
    background-color: #eff1f7;
    -webkit-border-top-right-radius: 0;
    border-top-right-radius: 0;
    margin-right: 14px;
    margin-left: 50px
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item.ks-from>.ks-body:before,
.ks-messenger__messages>.ks-body .ks-items>.ks-item.ks-from>.ks-body:before {
    content: '';
    display: block;
    position: absolute;
    right: -10px;
    top: 0;
    width: 0;
    height: 0;
    border-top: 0 solid transparent;
    border-right: 0 solid transparent;
    border-bottom: 10px solid transparent;
    border-left: 10px solid #eff1f7
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item.ks-unread>.ks-body,
.ks-messenger__messages>.ks-body .ks-items>.ks-item.ks-unread>.ks-body {
    background: #fcf8e7
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item.ks-unread.ks-self>.ks-body:after,
.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item.ks-unread.ks-self>.ks-body:before,
.ks-messenger__messages>.ks-body .ks-items>.ks-item.ks-unread.ks-self>.ks-body:after,
.ks-messenger__messages>.ks-body .ks-items>.ks-item.ks-unread.ks-self>.ks-body:before {
    border-top: 10px solid #fcf8e7
}

.ks-messenger .ks-messages>.ks-body .ks-items>.ks-item.ks-unread.ks-from>.ks-body:before,
.ks-messenger__messages>.ks-body .ks-items>.ks-item.ks-unread.ks-from>.ks-body:before {
    border-left: 10px solid #fcf8e7
}

.ks-messenger .ks-messages>.ks-footer,
.ks-messenger__messages>.ks-footer {
    padding: 15px 20px;
    border-top: 1px solid #dee0e1;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex
}

.ks-messenger .ks-messages>.ks-footer>.form-control,
.ks-messenger__messages>.ks-footer>.form-control {
    -webkit-box-flex: 1;
    -webkit-flex-grow: 1;
    -ms-flex-positive: 1;
    flex-grow: 1;
    height: 38px;
    overflow: hidden;
    resize: none;
    margin-right: 20px
}

.ks-messenger .ks-messages>.ks-footer>.ks-controls,
.ks-messenger__messages>.ks-footer>.ks-controls {
    text-align: right;
    width: 207px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center
}

.ks-messenger .ks-messages>.ks-footer>.ks-controls .ks-attachment,
.ks-messenger .ks-messages>.ks-footer>.ks-controls .ks-smile,
.ks-messenger__messages>.ks-footer>.ks-controls .ks-attachment,
.ks-messenger__messages>.ks-footer>.ks-controls .ks-smile {
    font-size: 22px;
    color: #8997c3;
    line-height: 22px;
    margin-left: 25px
}

.ks-messenger .ks-messages>.ks-footer>.ks-controls>.dropdown,
.ks-messenger__messages>.ks-footer>.ks-controls>.dropdown {
    display: inline-block
}

.ks-messenger .ks-messages>.ks-footer>.ks-controls>.dropdown>.ks-smile,
.ks-messenger__messages>.ks-footer>.ks-controls>.dropdown>.ks-smile {
    padding: 0
}

.ks-messenger .ks-messages>.ks-footer>.ks-controls>.dropdown>.ks-smileys,
.ks-messenger__messages>.ks-footer>.ks-controls>.dropdown>.ks-smileys {
    width: 200px;
    height: 167px
}

.ks-messenger .ks-messages>.ks-footer>.ks-controls>.dropdown>.ks-smileys .ks-smileys-wrapper,
.ks-messenger__messages>.ks-footer>.ks-controls>.dropdown>.ks-smileys .ks-smileys-wrapper {
    padding: 10px
}

.ks-messenger .ks-messages>.ks-footer>.ks-controls>.dropdown>.ks-smileys table,
.ks-messenger__messages>.ks-footer>.ks-controls>.dropdown>.ks-smileys table {
    width: 100%
}

.ks-messenger .ks-messages>.ks-footer>.ks-controls>.dropdown>.ks-smileys table td,
.ks-messenger__messages>.ks-footer>.ks-controls>.dropdown>.ks-smileys table td {
    vertical-align: middle;
    text-align: center;
    padding-bottom: 10px;
    cursor: pointer
}

.ks-messenger .ks-messages>.ks-footer>.ks-controls>.dropdown>.ks-smileys table tr:last-child td,
.ks-messenger__messages>.ks-footer>.ks-controls>.dropdown>.ks-smileys table tr:last-child td {
    padding-bottom: 0
}

.ks-messenger .ks-messages>.ks-files,
.ks-messenger__messages>.ks-files {
    list-style: none;
    padding: 0;
    margin: 0;
    padding: 20px;
    padding-top: 0;
    padding-bottom: 10px;
    margin-top: -10px
}

.ks-messenger .ks-messages>.ks-files>.ks-file,
.ks-messenger__messages>.ks-files>.ks-file {
    display: inline-block;
    cursor: pointer;
    margin-right: 10px;
    margin-top: 10px;
    position: relative
}

.ks-messenger .ks-messages>.ks-files>.ks-file:hover>.ks-thumb,
.ks-messenger__messages>.ks-files>.ks-file:hover>.ks-thumb {
    border: solid 1px #42a5f5
}

.ks-messenger .ks-messages>.ks-files>.ks-file>.ks-thumb,
.ks-messenger__messages>.ks-files>.ks-file>.ks-thumb {
    width: 90px;
    height: 90px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    background-color: #fff;
    border: solid 1px #dee0e1;
    margin-bottom: 5px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
    text-align: center;
    font-size: 45px;
    color: #25628f
}

.ks-messenger .ks-messages>.ks-files>.ks-file>.ks-thumb::before,
.ks-messenger__messages>.ks-files>.ks-file>.ks-thumb::before {
    width: 100%
}

.ks-messenger .ks-messages>.ks-files>.ks-file>img.ks-thumb,
.ks-messenger__messages>.ks-files>.ks-file>img.ks-thumb {
    border: none
}

.ks-messenger .ks-messages>.ks-files>.ks-file>.ks-name,
.ks-messenger__messages>.ks-files>.ks-file>.ks-name {
    display: block;
    font-size: 12px;
    font-weight: 400;
    color: #333
}

.ks-messenger .ks-messages>.ks-files>.ks-file>.ks-size,
.ks-messenger__messages>.ks-files>.ks-file>.ks-size {
    position: relative;
    top: -2px;
    font-size: 10px;
    color: #858585
}

.ks-messenger .ks-info,
.ks-messenger__info {
    width: 240px;
    background: #fff;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    border-left: 1px solid #dee0e1
}

.ks-messenger .ks-info>.ks-header,
.ks-messenger__info>.ks-header {
    border-bottom: 1px solid #dee0e1;
    line-height: 15px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
    height: 60px;
    padding: 20px
}

.ks-messenger .ks-info>.ks-body,
.ks-messenger__info>.ks-body {
    -webkit-box-flex: 1;
    -webkit-flex-grow: 1;
    -ms-flex-positive: 1;
    flex-grow: 1;
    padding: 20px
}

.ks-messenger .ks-info>.ks-body>.ks-item+.ks-item,
.ks-messenger__info>.ks-body>.ks-item+.ks-item {
    margin-top: 10px
}

.ks-messenger .ks-info>.ks-body>.ks-item.ks-user,
.ks-messenger__info>.ks-body>.ks-item.ks-user {
    margin-bottom: 20px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex
}

.ks-messenger .ks-info>.ks-body>.ks-item.ks-user>.ks-avatar,
.ks-messenger__info>.ks-body>.ks-item.ks-user>.ks-avatar {
    margin-right: 12px
}

.ks-messenger .ks-info>.ks-body>.ks-item.ks-user>.ks-name,
.ks-messenger__info>.ks-body>.ks-item.ks-user>.ks-name {
    line-height: 31px;
    color: #333
}

.ks-messenger .ks-info>.ks-body>.ks-item>.ks-name,
.ks-messenger__info>.ks-body>.ks-item>.ks-name {
    color: #858585;
    margin-bottom: 3px
}

.ks-messenger .ks-info>.ks-body>.ks-list>.ks-header,
.ks-messenger__info>.ks-body>.ks-list>.ks-header {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
    color: #858585;
    margin-bottom: 15px
}

.ks-messenger .ks-info>.ks-body>.ks-list .ks-item,
.ks-messenger__info>.ks-body>.ks-list .ks-item {
    margin-bottom: 15px
}

.ks-messenger .ks-info>.ks-body>.ks-list .ks-item.ks-user,
.ks-messenger__info>.ks-body>.ks-list .ks-item.ks-user {
    margin-bottom: 20px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    -js-display: flex;
    display: flex
}

.ks-messenger .ks-info>.ks-body>.ks-list .ks-item.ks-user>.ks-avatar,
.ks-messenger__info>.ks-body>.ks-list .ks-item.ks-user>.ks-avatar {
    margin-right: 12px
}

.ks-messenger .ks-info>.ks-body>.ks-list .ks-item.ks-user>.ks-name,
.ks-messenger__info>.ks-body>.ks-list .ks-item.ks-user>.ks-name {
    line-height: 31px;
    color: #333
}

.ks-messenger .ks-info>.ks-body>.ks-list .ks-item>.ks-owner,
.ks-messenger__info>.ks-body>.ks-list .ks-item>.ks-owner {
    position: relative;
    top: 1px
}

.ks-messenger .ks-info>.ks-body>.ks-list .ks-item>.ks-owner>.ks-name,
.ks-messenger__info>.ks-body>.ks-list .ks-item>.ks-owner>.ks-name {
    display: block;
    line-height: 13px
}

.ks-messenger .ks-info>.ks-body>.ks-list .ks-item>.ks-owner>.ks-label-sm,
.ks-messenger__info>.ks-body>.ks-list .ks-item>.ks-owner>.ks-label-sm {
    padding: 2px;
    font-size: 9px
}

.ks-messenger .ks-info>.ks-footer,
.ks-messenger__info>.ks-footer {
    padding: 20px;
    border-top: 1px solid #dee0e1
}

.ks-messenger .ks-info>.ks-footer>.ks-item+.ks-item,
.ks-messenger__info>.ks-footer>.ks-item+.ks-item {
    margin-top: 10px
}

.ks-messenger .ks-info>.ks-footer>.ks-item>.ks-name,
.ks-messenger__info>.ks-footer>.ks-item>.ks-name {
    color: #858585;
    margin-bottom: 3px
}

.ks-messenger .ks-info>.ks-footer>.btn-block,
.ks-messenger__info>.ks-footer>.btn-block {
    margin-top: 15px
}

@media screen and (max-width:1200px) {
    .btn.ks-messenger-info-block-toggle {
        position: static
    }
    .ks-messenger .ks-info,
    .ks-messenger__info {
        position: fixed;
        top: 120px;
        bottom: 0;
        right: -241px;
        z-index: 4;
        height: -webkit-calc(100% - 120px);
        height: calc(100% - 120px)
    }
    .ks-messenger .ks-info.ks-open,
    .ks-messenger__info.ks-open {
        right: 0;
        -webkit-transition: right .2s ease;
        transition: right .2s ease
    }
}

@media screen and (max-width:800px) {
    .ks-messenger .ks-discussions {
        width: 100%
    }
    .ks-messenger .ks-messages,
    .ks-messenger__messages {
        position: fixed;
        top: 120px;
        bottom: 0;
        z-index: 2;
        height: -webkit-calc(100% - 120px);
        height: calc(100% - 120px);
        width: 100%;
        right: -1000px
    }
    .ks-messenger .ks-messages.ks-open,
    .ks-messenger__messages.ks-open {
        right: 0;
        -webkit-transition: right .2s ease;
        transition: right .2s ease
    }
}

@media screen and (max-width:560px) {
    .ks-messenger .ks-messages>.ks-footer,
    .ks-messenger__messages>.ks-footer {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column
    }
    .ks-messenger .ks-messages>.ks-footer textarea,
    .ks-messenger__messages>.ks-footer textarea {
        margin-bottom: 20px
    }
    .ks-messenger__ks-messages-footer {
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        -webkit-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column
    }
    .ks-messenger__ks-messages-footer textarea {
        margin-bottom: 20px
    }
}
    </style>
</head>
<body>
<div class="container">
<div class="ks-page-content">
    <div class="ks-page-content-body">
        <div class="ks-messenger">
            <div class="ks-discussions">
                <div class="ks-search">
                    <div class="input-icon icon-right icon icon-lg icon-color-primary">
                        <input id="input-group-icon-text" type="text" class="form-control" placeholder="Search">
                        <span class="icon-addon">
                <span class="la la-search"></span>
                        </span>
                    </div>
                </div>
                <div class="ks-body ks-scrollable jspScrollable" data-auto-height="" style="height: 400px; overflow-y: auto; padding: 0px; width: 339px;" tabindex="0">

                    <div class="jspContainer" style="width: 339px; height: 550px;">
                        <div class="jspPane" style="padding: 0px; top: 0px; width: 329px;">
                            <ul class="ks-items">
                                <li class="ks-item ks-active">
                                    <a href="#">
                                        <span class="ks-group-amount">3</span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Group Chat
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="18" height="18" class="rounded-circle"> The weird future of movie theater food
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item ks-unread">
                                    <a href="#">
                                        <span class="ks-group-amount">5</span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar2.png" width="18" height="18" class="rounded-circle"> Why didn't he come and talk to me...
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar3.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar4.png" width="36" height="36">
                                            <span class="badge badge-pill badge-danger ks-badge ks-notify">7</span>
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar5.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar6.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar ks-online">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Brian Diaz
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">The weird future of movie theater food</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-group-amount">3 <span class="badge badge-pill badge-danger ks-badge ks-notify">7</span></span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar ks-offline">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar2.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>

                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar3.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar4.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Eric George
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">Why didn't he come and talk to me himse...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar5.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Lauren Sandoval
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">The weird future of movie theater food</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="ks-item ks-closed">
                                    <a href="#">
                                        <span class="ks-avatar">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar6.png" width="36" height="36">
                                        </span>
                                        <div class="ks-body">
                                            <div class="ks-name">
                                                Brian Diaz
                                                <span class="ks-datetime">just now</span>
                                            </div>
                                            <div class="ks-message">The weird future of movie theater food</div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="jspVerticalBar">
                            <div class="jspCap jspCapTop"></div>
                            <div class="jspTrack" style="height: 550px;">
                                <div class="jspDrag" style="height: 261px;">
                                    <div class="jspDragTop"></div>
                                    <div class="jspDragBottom"></div>
                                </div>
                            </div>
                            <div class="jspCap jspCapBottom"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="ks-messages ks-messenger__messages">
                <div class="ks-header">
                    <div class="ks-description">
                        <div class="ks-name">Chat name</div>
                        <div class="ks-amount">2 members</div>
                    </div>
                    <div class="ks-controls">
                        <div class="dropdown">
                            <button class="btn btn-primary-outline ks-light ks-no-text ks-no-arrow" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="la la-ellipsis-h ks-icon"></span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-right ks-simple" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">
                                    <span class="la la-user-plus ks-icon"></span>
                                    <span class="ks-text">Add members</span>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="la la-eye-slash ks-icon"></span>
                                    <span class="ks-text">Mark as unread</span>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="la la-bell-slash-o ks-icon"></span>
                                    <span class="ks-text">Mute notifications</span>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="la la-mail-forward ks-icon"></span>
                                    <span class="ks-text">Forward</span>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="la la-ban ks-icon"></span>
                                    <span class="ks-text">Spam</span>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <span class="la la-trash-o ks-icon"></span>
                                    <span class="ks-text">Delete</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ks-body ks-scrollable jspScrollable" data-auto-height="" data-reduce-height=".ks-footer" data-fix-height="32" style="height: 480px; overflow: hidden; padding: 0px; width: 701px;" tabindex="0">
                    <div class="jspContainer" style="width: 701px; height: 481px;">
                        <div class="jspPane" style="padding: 0px; top: 0px; width: 691px;">
                            <ul class="ks-items">
                                <li class="ks-item ks-self">
                                    <span class="ks-avatar ks-offline">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="36" height="36" class="rounded-circle">
                                    </span>
                                    <div class="ks-body">
                                        <div class="ks-header">
                                            <span class="ks-name">Brian Diaz</span>
                                            <span class="ks-datetime">6:46 PM</span>
                                        </div>
                                        <div class="ks-message">The weird future of movie theater food</div>
                                    </div>
                                </li>
                                <li class="ks-item ks-from">
                                    <span class="ks-avatar ks-online">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar2.png" width="36" height="36" class="rounded-circle">
                                    </span>
                                    <div class="ks-body">
                                        <div class="ks-header">
                                            <span class="ks-name">Brian Diaz</span>
                                            <span class="ks-datetime">6:46 PM</span>
                                        </div>
                                        <div class="ks-message">The weird future of movie theater food</div>
                                    </div>
                                </li>
                                <li class="ks-item ks-from">
                                    <span class="ks-avatar ks-online">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar3.png" width="36" height="36" class="rounded-circle">
                                    </span>
                                    <div class="ks-body">
                                        <div class="ks-header">
                                            <span class="ks-name">Brian Diaz</span>
                                            <span class="ks-datetime">6:46 PM</span>
                                        </div>
                                        <div class="ks-message">
                                            The weird future of movie theater food

                                            <div class="ks-link">
                                                <div class="ks-name">Google</div>
                                                <a href="http://www.google.com" target="_blank">www.google.com</a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="ks-item ks-self">
                                    <span class="ks-avatar ks-offline">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar4.png" width="36" height="36" class="rounded-circle">
                                    </span>
                                    <div class="ks-body">
                                        <div class="ks-header">
                                            <span class="ks-name">Brian Diaz</span>
                                            <span class="ks-datetime">6:46 PM</span>
                                        </div>
                                        <div class="ks-message">The weird future of movie theater food</div>
                                    </div>
                                </li>
                                <li class="ks-item ks-from ks-unread">
                                    <span class="ks-avatar ks-online">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar5.png" width="36" height="36" class="rounded-circle">
                                    </span>
                                    <div class="ks-body">
                                        <div class="ks-header">
                                            <span class="ks-name">Brian Diaz</span>
                                            <span class="ks-datetime">1 minute ago</span>
                                        </div>
                                        <div class="ks-message">
                                            The weird future of movie theater food

                                            <ul class="ks-files">
                                                <li class="ks-file">
                                                    <a href="#">
                                                        <span class="ks-thumb">
                                                            <span class="ks-icon la la-file-word-o text-info"></span>
                                                        </span>
                                                        <span class="ks-info">
                                                            <span class="ks-name">Project...</span>
                                                        <span class="ks-size">15 kb</span>
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="ks-file">
                                                    <a href="#">
                                                        <span class="ks-thumb">
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="36" height="36">
                                                        </span>
                                                        <span class="ks-info">
                                                            <span class="ks-name">photo.jpg</span>
                                                        <span class="ks-size">312 kb</span>
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>

                                <li class="ks-separator">Today</li>

                                <li class="ks-item ks-self">
                                    <span class="ks-avatar ks-offline">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar2.png" width="36" height="36" class="rounded-circle">
                                    </span>
                                    <div class="ks-body">
                                        <div class="ks-header">
                                            <span class="ks-name">Brian Diaz</span>
                                            <span class="ks-datetime">6:46 PM</span>
                                        </div>
                                        <div class="ks-message">
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
                                        </div>
                                    </div>
                                </li>
                                <li class="ks-item ks-self">
                                    <span class="ks-avatar ks-offline">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar3.png" width="36" height="36" class="rounded-circle">
                                    </span>
                                    <div class="ks-body">
                                        <div class="ks-header">
                                            <span class="ks-name">Brian Diaz</span>
                                            <span class="ks-datetime">6:46 PM</span>
                                        </div>
                                        <div class="ks-message">
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
                                        </div>
                                    </div>
                                </li>
                                <li class="ks-item ks-self">
                                    <span class="ks-avatar ks-offline">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar4.png" width="36" height="36" class="rounded-circle">
                                    </span>
                                    <div class="ks-body">
                                        <div class="ks-header">
                                            <span class="ks-name">Brian Diaz</span>
                                            <span class="ks-datetime">6:46 PM</span>
                                        </div>
                                        <div class="ks-message">
                                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="jspVerticalBar">
                            <div class="jspCap jspCapTop"></div>
                            <div class="jspTrack" style="height: 481px;">
                                <div class="jspDrag" style="height: 206px;">
                                    <div class="jspDragTop"></div>
                                    <div class="jspDragBottom"></div>
                                </div>
                            </div>
                            <div class="jspCap jspCapBottom"></div>
                        </div>
                    </div>
                </div>
                <div class="ks-footer">
                    <textarea class="form-control" placeholder="Type something..."></textarea>
                    <div class="ks-controls">
                        <button class="btn btn-primary">Send</button>
                        <a href="#" class="la la-paperclip ks-attachment"></a>
                        <div class="dropdown dropup">
                            <button class="btn btn-link ks-smile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="la la-smile-o"></span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-right ks-scrollable ks-smileys" aria-labelledby="dropdownMenuButton" style="overflow: hidden; padding: 0px; width: 200px;">

                                <div class="jspContainer" style="width: 198px; height: 165px;">
                                    <div class="jspPane" style="padding: 0px; top: 0px; left: 0px; width: 100px;">
                                        <div class="ks-smileys-wrapper">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar2.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar3.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar4.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar2.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar3.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar4.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar5.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar6.png" width="20" height="20">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar2.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar3.png" width="20" height="20">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar2.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar3.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar4.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar5.png" width="20" height="20">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar2.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar3.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar4.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar5.png" width="20" height="20">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar2.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar3.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar4.png" width="20" height="20">
                                                        </td>
                                                        <td>
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar5.png" width="20" height="20">
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ks-info ks-messenger__info">
                <div class="ks-header">
                    User Info
                </div>
                <div class="ks-body">
                    <div class="ks-item ks-user">
                        <span class="ks-avatar ks-online">
                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="36" height="36" class="rounded-circle">
                        </span>
                        <span class="ks-name">
                            Lauren Sandoval
                        </span>
                    </div>

                    <div class="ks-item">
                        <div class="ks-name">Username</div>
                        <div class="ks-text">
                            @lauren.sandoval
                        </div>
                    </div>
                    <div class="ks-item">
                        <div class="ks-name">Email</div>
                        <div class="ks-text">
                            lauren.sandoval@example.com
                        </div>
                    </div>
                    <div class="ks-item">
                        <div class="ks-name">Phone Number</div>
                        <div class="ks-text">
                            +1(555) 555-555
                        </div>
                    </div>
                </div>
                <div class="ks-footer">
                    <div class="ks-item">
                        <div class="ks-name">Created</div>
                        <div class="ks-text">
                            Febriary 17, 2016 at 11:38 PM
                        </div>
                    </div>
                    <div class="ks-item">
                        <div class="ks-name">Last Activity</div>
                        <div class="ks-text">
                            1 minute ago
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>