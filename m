Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 744DFA29211
	for <lists+jfs-discussion@lfdr.de>; Wed,  5 Feb 2025 15:58:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tfgqW-0002NX-A2;
	Wed, 05 Feb 2025 14:57:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <secalert@redhat.com>) id 1tfWBD-0004E3-RK
 for jfs-discussion@lists.sourceforge.net;
 Wed, 05 Feb 2025 03:34:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:Subject:
 Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MGETTJwXKmtkHbjBUrEilUgNOhyKt9P4fGRlAajP6s0=; b=PTJowaPUx/8vhi29HGZn9hxs9Z
 OOkPNEm1p1YDNYWucaMzb/7tOmMKNhyD+rZ3TfRtfZUOygrVL7kEY5lRdinRLH79cn54xeIwqvfAC
 cLnALAlJoteRbGewZ4IKZKwBel0OoUmY+n76xUJx/+PMPZhEb1U6h3lORP/hT9uvxgWU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:Subject:Message-ID:To:Reply-To
 :From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=MGETTJwXKmtkHbjBUrEilUgNOhyKt9P4fGRlAajP6s0=; b=m/OTEEpmtX2D
 R2eo4O05LTM2c7oSqJkvtECUDF8isEQuC3o/QMYMaI0XMqrOGu0TYJ0rVmmbtYJsyXdDwHhePmX04
 goiAye1pzjg8aJLq7oAr3Ux6R/MmNjMTmkcb/amXur/8tkvP+uAv22+nAhnD1IXrA/CImsKSNxTN5
 Rm7OU=;
Received: from outbound403.service-now.com ([149.96.6.209])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tfWBC-00086R-OJ for jfs-discussion@lists.sourceforge.net;
 Wed, 05 Feb 2025 03:34:23 +0000
Received: from outbound22.service-now.com (unknown [10.248.3.212])
 by outbound403.service-now.com (Postfix) with ESMTPS id CC43C4C8D
 for <jfs-discussion@lists.sourceforge.net>;
 Tue,  4 Feb 2025 19:34:11 -0800 (PST)
Received: from app128155.ycg201.service-now.com (unknown [10.248.3.236])
 by outbound22.service-now.com (Postfix) with ESMTP id 6ED65600008E;
 Tue,  4 Feb 2025 19:34:08 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 outbound22.service-now.com 6ED65600008E
Date: Tue, 4 Feb 2025 19:34:08 -0800 (PST)
To: syzkaller@googlegroups.com, liujingfeng@qianxin.com, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Message-ID: <862202654.31935.1738726448432@app128155.ycg201.service-now.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
 boundary="----=_Part_31933_2100591394.1738726448432"
X-ServiceNow-Source: Notification-ec04d32213ede300196f7e276144b04e
X-ServiceNow-SysEmail-Version: 2
Precedence: bulk
Auto-Submitted: auto-generated
X-ServiceNow-Generated: true
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello! INC3342348 (GPF and null-ptr-deref caused by
 uninitialization
 of jfs module) is pending your review. Opened for: liujingfeng@qianxin.com
 Followers: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, syzkaller@googlegroups.com 
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [149.96.6.209 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [149.96.6.209 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [149.96.6.209 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 LIST_PARTIAL           Has incomplete List-* header set
X-Headers-End: 1tfWBC-00086R-OJ
X-Mailman-Approved-At: Wed, 05 Feb 2025 14:57:42 +0000
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

------=_Part_31933_2100591394.1738726448432
Content-Type: multipart/alternative; 
	boundary="----=_Part_31934_1320707906.1738726448432"

------=_Part_31934_1320707906.1738726448432
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

Hello!

INC3342348 (GPF and null-ptr-deref caused by uninitialization of jfs module) is pending your review.

Opened for: liujingfeng@qianxin.com
Followers: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, syzkaller@googlegroups.com

Rohit Keshri updated your request with the following comments:

Hello liujingfeng,
 Thank you for reporting this to us, and sure we will assign a CVE to this.
  Can you you share this report to security@kernel.org [mailto:security@kernel.org] (and please keep rkeshri@redhat.com [mailto:rkeshri@redhat.com] in the CC). Once we verify that and agree on a patch, I can then work on the CVE assignment.
 Appreciate your collaboration.
 Regards,
Rohit

How can I track and update my request?

To respond, reply to this email. You may also create a new email and include the request number (INC3342348) in the subject.

Thank you,
Product Security

Ref:MSG101161883
------=_Part_31934_1320707906.1738726448432
Content-Transfer-Encoding: 7bit
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div><p style="margin-top:0;margin-bottom:10px;">Hello!</p><p style="margin-top:0;margin-bottom:10px;">INC3342348 (GPF and null-ptr-deref caused by uninitialization of jfs module) is pending your review.</p><p style="margin-top:0;margin-bottom:10px;">Opened for:&nbsp;liujingfeng@qianxin.com<br>Followers:&nbsp;shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, syzkaller@googlegroups.com</p></div>
<p style="margin-top: 10px; margin-bottom: 10px;">Rohit Keshri updated your request with the following comments:</p>
<div style="padding: 10px 0 10px 10px; background-color: ivory;"><div>Hello liujingfeng,</div><div>&nbsp;</div><div>Thank you for reporting this to us, and sure we will assign a CVE to this.</div><div>&nbsp;</div><div> Can you you share this report to <a target="_blank" href="mailto:security@kernel.org" rel="noopener noreferrer nofollow">security@kernel.org</a> (and please keep <a target="_blank" href="mailto:rkeshri@redhat.com" rel="noopener noreferrer nofollow">rkeshri@redhat.com</a> in the CC). Once we verify that and agree on a patch, I can then work on the CVE assignment.</div><div>&nbsp;</div><div>Appreciate your collaboration.</div><div>&nbsp;</div><div>Regards,</div><div>Rohit</div></div>
<div><p style="margin-top:20px;margin-bottom:10px;"><strong>How can I track and update my request?</strong></p><p style="margin-top:0;margin-bottom:10px;">To respond, reply to this email. You may also create a new email and include the request number (INC3342348) in the subject.</p></div>
<p style="margin-top: 14px; margin-bottom: 0;">Thank you,<br>Product Security</p><div>&nbsp;</div><div style="display:inline">Ref:MSG101161883</div></body></html>
------=_Part_31934_1320707906.1738726448432--

------=_Part_31933_2100591394.1738726448432
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


------=_Part_31933_2100591394.1738726448432
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

------=_Part_31933_2100591394.1738726448432--

