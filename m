Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0251FA2F111
	for <lists+jfs-discussion@lfdr.de>; Mon, 10 Feb 2025 16:13:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1thVSt-0003xO-5r;
	Mon, 10 Feb 2025 15:12:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <secalert@redhat.com>) id 1thMSd-0005EY-Km
 for jfs-discussion@lists.sourceforge.net;
 Mon, 10 Feb 2025 05:36:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:Subject:
 Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ezYfINlRM6NOSCQ/zHiH0ahJOqJkfO19u53/nlT2lkc=; b=AWYMwRphrF1jTdXthEEvMANkYh
 DrVWHES3pnitbhjY5nDDLH2YoqAo6Er0A+M1teqhMir79ZyeiU5cai0/Y6qM3vbHV7g3lSoMqCGCW
 P8cyeJAW3sKCer2cGnUC8fWppzcBvaUmgbV/ib599NiKyHNrct6GTC+6SR43A8AX6AFQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:Subject:Message-ID:To:Reply-To
 :From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=ezYfINlRM6NOSCQ/zHiH0ahJOqJkfO19u53/nlT2lkc=; b=J0I4PisnwcJk
 6t3wTwZKgRKI4e4QOfjrv6G4WHSwLUfWxJuaPOxbsgtunIF/IJP1QaTdVq1uS5nexd63Y0C/IHfDX
 uGnL5KCTD/2K+bepxbK3aOuHAqy4EHYq7W1+5sMlq3HbCwPcQ5FtH49pihsW30BRaxWKOtOymJ30H
 owGJg=;
Received: from outbound403.service-now.com ([149.96.6.209])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1thMSc-00011l-LE for jfs-discussion@lists.sourceforge.net;
 Mon, 10 Feb 2025 05:35:59 +0000
Received: from outbound22.service-now.com (unknown [10.248.3.212])
 by outbound403.service-now.com (Postfix) with ESMTPS id AC409842
 for <jfs-discussion@lists.sourceforge.net>;
 Sun,  9 Feb 2025 21:35:47 -0800 (PST)
Received: from app132162.ycg201.service-now.com (unknown [10.248.3.236])
 by outbound22.service-now.com (Postfix) with ESMTP id 61E3D600009F;
 Sun,  9 Feb 2025 21:35:44 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 outbound22.service-now.com 61E3D600009F
Date: Sun, 9 Feb 2025 21:35:44 -0800 (PST)
To: syzkaller@googlegroups.com, liujingfeng@qianxin.com, shaggy@kernel.org,
 rkeshri@redhat.com, security@kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Message-ID: <58369051.179318.1739165744384@app132162.ycg201.service-now.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
 boundary="----=_Part_179316_264529171.1739165744384"
X-ServiceNow-Source: Notification-ec04d32213ede300196f7e276144b04e
X-ServiceNow-SysEmail-Version: 2
Precedence: bulk
Auto-Submitted: auto-generated
X-ServiceNow-Generated: true
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello! INC3389413 (FW: GPF and null-ptr-deref caused by
 uninitialization
 of jfs module(INC3342348)) has been updated. Opened for:
 liujingfeng@qianxin.com
 Followers: security@kernel.org, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, Rohit Keshri, syzkaller@googlegroups.com 
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [149.96.6.209 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [149.96.6.209 listed in sa-accredit.habeas.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [149.96.6.209 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 LIST_PARTIAL           Has incomplete List-* header set
X-Headers-End: 1thMSc-00011l-LE
X-Mailman-Approved-At: Mon, 10 Feb 2025 15:12:48 +0000
Subject: Re: [Jfs-discussion] FW: GPF and null-ptr-deref caused by
 uninitialization of jfs module(INC3342348)
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

------=_Part_179316_264529171.1739165744384
Content-Type: multipart/alternative; 
	boundary="----=_Part_179317_521618464.1739165744384"

------=_Part_179317_521618464.1739165744384
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

Hello!

INC3389413 (FW: GPF and null-ptr-deref caused by uninitialization of jfs module(INC3342348)) has been updated.

Opened for: liujingfeng@qianxin.com
Followers: security@kernel.org, shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, Rohit Keshri, syzkaller@googlegroups.com

A Guest updated your request with the following comments:

Reply from: gregkh@linuxfoundation.org
 View email thread

How can I track and update my request?

To respond, reply to this email. You may also create a new email and include the request number (INC3389413) in the subject.

Thank you,
Product Security

Ref:MSG101380319
------=_Part_179317_521618464.1739165744384
Content-Transfer-Encoding: 7bit
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div><p style="margin-top:0;margin-bottom:10px;">Hello!</p><p style="margin-top:0;margin-bottom:10px;">INC3389413 (FW: GPF and null-ptr-deref caused by uninitialization of jfs module(INC3342348)) has been updated.</p><p style="margin-top:0;margin-bottom:10px;">Opened for:&nbsp;liujingfeng@qianxin.com<br>Followers:&nbsp;security@kernel.org, shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, Rohit Keshri, syzkaller@googlegroups.com</p></div>
<p style="margin-top: 10px; margin-bottom: 10px;">A Guest updated your request with the following comments:</p>
<div style="padding: 10px 0 10px 10px; background-color: ivory;"><div>Reply from: gregkh@linuxfoundation.org</div><div>&nbsp;</div><div><details style="display: inline;"><summary style="cursor: pointer; font-weight: 900; font-family: Verdana, sans-serif; font-size: 11px;">View email thread</summary></details></div></div>
<div><p style="margin-top:20px;margin-bottom:10px;"><strong>How can I track and update my request?</strong></p><p style="margin-top:0;margin-bottom:10px;">To respond, reply to this email. You may also create a new email and include the request number (INC3389413) in the subject.</p></div>
<p style="margin-top: 14px; margin-bottom: 0;">Thank you,<br>Product Security</p><div>&nbsp;</div><div style="display:inline">Ref:MSG101380319</div></body></html>
------=_Part_179317_521618464.1739165744384--

------=_Part_179316_264529171.1739165744384
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


------=_Part_179316_264529171.1739165744384
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

------=_Part_179316_264529171.1739165744384--

