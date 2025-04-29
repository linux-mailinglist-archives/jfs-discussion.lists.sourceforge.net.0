Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F4BAA0EE1
	for <lists+jfs-discussion@lfdr.de>; Tue, 29 Apr 2025 16:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Reply-To:From:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:
	MIME-Version:Message-ID:To:Date:Sender:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VTqqaDBVj2wQvgiXoBgMYqDPskWMoxbbTJ4GB/UoLqE=; b=iklQ7gKE9xIi9bae5mFH1eYtJo
	0xHXIaEZ73eZiYAYTsld7krKcPRxmU4mtGVSePR03DjgNyG/OQBgn7ZT1zJR9L4Vb+ehd9011h4Jk
	2X7kqlqkCd139Ux7+lQlbNBD9kUB6hKXLZr96OIfJteKlQ09XJtwzw4s1SXsHDBVbmPw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u9lyO-0007Jm-JJ;
	Tue, 29 Apr 2025 14:30:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <secalert@redhat.com>) id 1u9feq-0002ZZ-LA
 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Apr 2025 07:45:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:Subject:
 Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=goaL4LY8axysEUnLH/cxu8aVFDRPus2SEA9zNJbZ4u8=; b=T4lr8HPqA7PlnBIg7zB9xWenLL
 dzHwnKcErp+9gDKqbnMhzC7cJa5Tf3xGnYBrWUqtRtKzWKZy7awDCBgpn3C23lxcbjJ5D0LP/EXx7
 0nooM/rRqsRwBGAR3jXIAmj9Uxtn5IM8qmkabscRAmYWPVbror9xaUhyR8PLQmu1UWEQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:Subject:Message-ID:To:Reply-To
 :From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=goaL4LY8axysEUnLH/cxu8aVFDRPus2SEA9zNJbZ4u8=; b=Bsd9M6tl79Ao
 aQchdnSRgOg8az9HXISrV3MiDVeTEe1Q8C+hgu9x/m3nBYruVLNbY6r7TPtuS2rIIJbNKvG9L5aXp
 JwBUKqm1fLtb+I7TtO0ahp5jru/8l/S9aKTWZQ2VOyPh8wC+cROq2K/0qB/se5N+1oQE450Y0wHSC
 Mtu/8=;
Received: from outbound403.service-now.com ([149.96.6.209])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u9fea-0001t2-Mt for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Apr 2025 07:45:36 +0000
Received: from outbound24.service-now.com (unknown [10.248.3.212])
 by outbound403.service-now.com (Postfix) with ESMTPS id C23482941
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 29 Apr 2025 00:28:58 -0700 (PDT)
Received: from app128155.ycg201.service-now.com (unknown [10.248.3.236])
 by outbound24.service-now.com (Postfix) with ESMTP id 608EC60000A1;
 Tue, 29 Apr 2025 00:28:55 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 outbound24.service-now.com 608EC60000A1
Date: Tue, 29 Apr 2025 00:28:55 -0700 (PDT)
To: syzkaller@googlegroups.com, liujingfeng@qianxin.com, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Message-ID: <2045846485.14638.1745911735381@app128155.ycg201.service-now.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
 boundary="----=_Part_14636_1836258148.1745911735380"
X-ServiceNow-Source: Notification-ec04d32213ede300196f7e276144b04e
X-ServiceNow-SysEmail-Version: 2
Precedence: bulk
Auto-Submitted: auto-generated
X-ServiceNow-Generated: true
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello! INC3342348 (GPF and null-ptr-deref caused by
 uninitialization
 of jfs module) has been resolved. Opened for: liujingfeng@qianxin.com
 Followers:
 shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, syzkaller@googlegroups.com 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1u9fea-0001t2-Mt
X-Mailman-Approved-At: Tue, 29 Apr 2025 14:30:03 +0000
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

------=_Part_14636_1836258148.1745911735380
Content-Type: multipart/alternative; 
	boundary="----=_Part_14637_221261934.1745911735380"

------=_Part_14637_221261934.1745911735380
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

Hello!

INC3342348 (GPF and null-ptr-deref caused by uninitialization of jfs module) has been resolved.

Opened for: liujingfeng@qianxin.com
Followers: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, syzkaller@googlegroups.com

Rohit Keshri updated your request with the following comments:

Hello Team,
 Thank you for contribution.
 We are closing this request.
 Regards, Rohit

How can I track and update my request?

We want to make sure we have provided you with a complete resolution.

Please review the resolution detail and let us know whether you are all set by approving the resolution.

Thank you,
Product Security

Ref:MSG105213043
------=_Part_14637_221261934.1745911735380
Content-Transfer-Encoding: 7bit
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div><p style="margin-top:0;margin-bottom:10px;">Hello!</p><p style="margin-top:0;margin-bottom:10px;">INC3342348 (GPF and null-ptr-deref caused by uninitialization of jfs module) has been resolved.</p><p style="margin-top:0;margin-bottom:10px;">Opened for:&nbsp;liujingfeng@qianxin.com<br>Followers:&nbsp;shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, syzkaller@googlegroups.com</p></div>
<p style="margin-top: 10px; margin-bottom: 10px;">Rohit Keshri updated your request with the following comments:</p>
<div style="padding: 10px 0 10px 10px; background-color: ivory;"><div>Hello Team,</div><div>&nbsp;</div><div>Thank you for contribution.</div><div>&nbsp;</div><div>We are closing this request.</div><div>&nbsp;</div><div>Regards, Rohit</div></div>
<div><p style="margin-top:20px;margin-bottom:5px;"><strong>How can I track and update my request?</strong></p><p style="margin-top:0;margin-bottom:0;">We want to make sure we have provided you with a complete resolution.</p><p style="margin-top:0;margin-bottom:10px;">Please review the resolution detail and let us know whether you are all set by approving the resolution.</p></div>
<p style="margin-top: 14px; margin-bottom: 0;">Thank you,<br>Product Security</p><div>&nbsp;</div><div style="display:inline">Ref:MSG105213043</div></body></html>
------=_Part_14637_221261934.1745911735380--

------=_Part_14636_1836258148.1745911735380
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


------=_Part_14636_1836258148.1745911735380
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

------=_Part_14636_1836258148.1745911735380--

