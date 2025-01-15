Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC57A1265D
	for <lists+jfs-discussion@lfdr.de>; Wed, 15 Jan 2025 15:44:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tY4ck-000891-73;
	Wed, 15 Jan 2025 14:44:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <secalert@redhat.com>) id 1tXwAh-0006WI-Ki
 for jfs-discussion@lists.sourceforge.net;
 Wed, 15 Jan 2025 05:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:Subject:
 Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cY8qdrLWV2AKSEfSYqnTDuP+bj7ZRESFa+zc9vxAnhE=; b=G/eLYi3G9qsH/zZMJjRHTU5wwh
 UpVuAsEg6AdVEsXz2k7dKrmv5u/Qed5DsO8PK5kIoIvEmZMhmcCDdJVzku2EdPLftMnjF0BtnKW9m
 1H9Pg9JGmS3sxZGkrMAOxTVLArwPoR0PDZqDv9IvmdqggSQbiXtEtI9c8m/+RrqJPSLw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:Subject:Message-ID:To:Reply-To
 :From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=cY8qdrLWV2AKSEfSYqnTDuP+bj7ZRESFa+zc9vxAnhE=; b=hHX2giTSLKVR
 PjMrM9NSYowW22hlCXyDlLWNh7PpMgwe/ZOuf3wIpJ94CRK9IEmfwyyglE2Ng1xRBAFpb0NPDfiqg
 rlIIn0/fk/26sGA1P35834TMfh6S8+5BnT+9p5i9APe1J34vi5o8aSup0N5fNEpRXkZMYUXgV0kng
 7KH08=;
Received: from outbound403.service-now.com ([149.96.6.209])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXwAg-0000WA-Gn for jfs-discussion@lists.sourceforge.net;
 Wed, 15 Jan 2025 05:42:31 +0000
Received: from outbound24.service-now.com (unknown [10.248.3.212])
 by outbound403.service-now.com (Postfix) with ESMTPS id 8FC691702
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 14 Jan 2025 21:26:49 -0800 (PST)
Received: from app132162.ycg201.service-now.com (unknown [10.248.3.236])
 by outbound24.service-now.com (Postfix) with ESMTP id E17506000095;
 Tue, 14 Jan 2025 21:26:45 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 outbound24.service-now.com E17506000095
Date: Tue, 14 Jan 2025 21:26:45 -0800 (PST)
To: syzkaller@googlegroups.com, liujingfeng@qianxin.com, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Message-ID: <158442257.183098.1736918805907@app132162.ycg201.service-now.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
 boundary="----=_Part_183096_833843361.1736918805906"
X-ServiceNow-Source: Notification-ec04d32213ede300196f7e276144b04e
X-ServiceNow-SysEmail-Version: 2
Precedence: bulk
Auto-Submitted: auto-generated
X-ServiceNow-Generated: true
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello! INC3342348 (GPF and null-ptr-deref caused by
 uninitialization
 of jfs module) has been updated. Opened for: liujingfeng@qianxin.com
 Followers:
 shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, syzkaller@googlegroups.com 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [149.96.6.209 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [149.96.6.209 listed in sa-trusted.bondedsender.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [149.96.6.209 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1tXwAg-0000WA-Gn
X-Mailman-Approved-At: Wed, 15 Jan 2025 14:44:00 +0000
Subject: Re: [Jfs-discussion] GPF and null-ptr-deref caused by
 uninitialization of jfs module
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Red Hat Product Security via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Red Hat Product Security <secalert@redhat.com>
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

------=_Part_183096_833843361.1736918805906
Content-Type: multipart/alternative; 
	boundary="----=_Part_183097_1419408679.1736918805906"

------=_Part_183097_1419408679.1736918805906
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

Hello!

INC3342348 (GPF and null-ptr-deref caused by uninitialization of jfs module) has been updated.

Opened for: liujingfeng@qianxin.com
Followers: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, syzkaller@googlegroups.com

Abhishek Raj updated your request with the following comments:

Hi,
 I'm writing to acknowledge receipt of your request. We are reviewing the ticket and an Analyst will report back as soon as possible.
 Thanks!

How can I track and update my request?

To respond, reply to this email. You may also create a new email and include the request number (INC3342348) in the subject.

Thank you,
Product Security

Ref:MSG100193754
------=_Part_183097_1419408679.1736918805906
Content-Transfer-Encoding: 7bit
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div><p style="margin-top:0;margin-bottom:10px;">Hello!</p><p style="margin-top:0;margin-bottom:10px;">INC3342348 (GPF and null-ptr-deref caused by uninitialization of jfs module) has been updated.</p><p style="margin-top:0;margin-bottom:10px;">Opened for:&nbsp;liujingfeng@qianxin.com<br>Followers:&nbsp;shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, syzkaller@googlegroups.com</p></div>
<p style="margin-top: 10px; margin-bottom: 10px;">Abhishek Raj updated your request with the following comments:</p>
<div style="padding: 10px 0 10px 10px; background-color: ivory;"><div>Hi,</div><div>&nbsp;</div><div>I'm writing to acknowledge receipt of your request. We are reviewing the ticket and an Analyst will report back as soon as possible.</div><div>&nbsp;</div><div>Thanks!</div></div>
<div><p style="margin-top:20px;margin-bottom:10px;"><strong>How can I track and update my request?</strong></p><p style="margin-top:0;margin-bottom:10px;">To respond, reply to this email. You may also create a new email and include the request number (INC3342348) in the subject.</p></div>
<p style="margin-top: 14px; margin-bottom: 0;">Thank you,<br>Product Security</p><div>&nbsp;</div><div style="display:inline">Ref:MSG100193754</div></body></html>
------=_Part_183097_1419408679.1736918805906--

------=_Part_183096_833843361.1736918805906
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


------=_Part_183096_833843361.1736918805906
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

------=_Part_183096_833843361.1736918805906--

