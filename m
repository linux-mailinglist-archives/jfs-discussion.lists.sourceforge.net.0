Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFBDA1810C
	for <lists+jfs-discussion@lfdr.de>; Tue, 21 Jan 2025 16:22:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1taG4a-0007EQ-V4;
	Tue, 21 Jan 2025 15:21:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <secalert@redhat.com>) id 1ta8Gn-00072C-0D
 for jfs-discussion@lists.sourceforge.net;
 Tue, 21 Jan 2025 07:01:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:Subject:
 Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zXLcsrttpM4sstq8z5MFoJ36s8bkJR8HXgWpEWYg/aY=; b=K3Uv5PDQIHgfMLaX4EkjI9fYY0
 ujpcVVrwpOdGNQJMnXoz6MGw53yAldRoJB3GiThdu75rxpAEE2k4CkfnEg2Uxqx8ReDRpaa+Z6Kr7
 7TB6ykW6XhAUcY42mC0PEOVdhxQUKFmeLN0jH9rnJGNATt7/St4jXmhChfcsh8C3CvnM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:Subject:Message-ID:To:Reply-To
 :From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=zXLcsrttpM4sstq8z5MFoJ36s8bkJR8HXgWpEWYg/aY=; b=kgVmt0DRIH9c
 pS09cUnnMtJN+c1f63z960ni7mBTqHr8/QzZhtBc01Ut3NCWsqQrXht0jr2eeQikARxgfHaUb03qx
 qDIKw706FE9Fc83TiSpArv1YHZxpiiECgP+p2uflxCLCe1WV5HKYuf2bMMf2OmcaXqVrlCHkaKqP+
 mpICM=;
Received: from outbound403.service-now.com ([149.96.6.209])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ta8Gi-0003MR-Hv for jfs-discussion@lists.sourceforge.net;
 Tue, 21 Jan 2025 07:01:50 +0000
Received: from outbound21.service-now.com (unknown [10.248.3.212])
 by outbound403.service-now.com (Postfix) with ESMTPS id CAFB3161F
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 20 Jan 2025 23:01:37 -0800 (PST)
Received: from app132162.ycg201.service-now.com (unknown [10.248.3.236])
 by outbound21.service-now.com (Postfix) with ESMTP id 57D92600008B;
 Mon, 20 Jan 2025 23:01:34 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 outbound21.service-now.com 57D92600008B
Date: Mon, 20 Jan 2025 23:01:34 -0800 (PST)
To: syzkaller@googlegroups.com, liujingfeng@qianxin.com, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Message-ID: <1401349421.246898.1737442894346@app132162.ycg201.service-now.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
 boundary="----=_Part_246896_824635121.1737442894346"
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
 Content preview:  Hello! INC3354074 (Reply: GPF and null-ptr-deref caused by
 uninitialization of jfs module) has been updated. Opened for:
 liujingfeng@qianxin.com
 Followers: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, syzkaller@googlegroups.com 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [149.96.6.209 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1ta8Gi-0003MR-Hv
X-Mailman-Approved-At: Tue, 21 Jan 2025 15:21:47 +0000
Subject: Re: [Jfs-discussion] Reply: GPF and null-ptr-deref caused by
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

------=_Part_246896_824635121.1737442894346
Content-Type: multipart/alternative; 
	boundary="----=_Part_246897_2063606462.1737442894346"

------=_Part_246897_2063606462.1737442894346
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hello!

INC3354074 (Reply: GPF and null-ptr-deref caused by uninitialization of jfs=
 module) has been updated.

Opened for: liujingfeng@qianxin.com
Followers: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-k=
ernel@vger.kernel.org, syzkaller@googlegroups.com

Tej Rathi updated your request with the following comments:

Hello,
 Greetings from Red Hat Product Security!
 Your previous email was successfully delivered, and we have already acknow=
ledged your earlier request (INC3342348). We sincerely apologize for any de=
lays on our part. Due to the year-end holidays, we were operating with limi=
ted resources but worked diligently to address each request.
 The issue is currently under investigation. I=E2=80=99ve reached out to ou=
r Kernel Security Analyst, and they will provide further updates shortly. P=
lease note that all further communication will reference INC3342348, which =
remains open, and you will continue to receive updates accordingly.
 I am closing this thread. Thank you for your patience and understanding. W=
e truly appreciate your cooperation.
 Best Regards,
Tej Rathi
Security Analyst, Red Hat Product Security.

How can I track and update my request?

To respond, reply to this email. You may also create a new email and includ=
e the request number (INC3354074) in the subject.

Thank you,
Product Security

Ref:MSG100465771
------=_Part_246897_2063606462.1737442894346
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div><p style=3D"margin-top:0;margin-bottom:10px;"=
>Hello!</p><p style=3D"margin-top:0;margin-bottom:10px;">INC3354074 (Reply:=
 GPF and null-ptr-deref caused by uninitialization of jfs module) has been =
updated.</p><p style=3D"margin-top:0;margin-bottom:10px;">Opened for:&nbsp;=
liujingfeng@qianxin.com<br>Followers:&nbsp;shaggy@kernel.org, jfs-discussio=
n@lists.sourceforge.net, linux-kernel@vger.kernel.org, syzkaller@googlegrou=
ps.com</p></div>
<p style=3D"margin-top: 10px; margin-bottom: 10px;">Tej Rathi updated your =
request with the following comments:</p>
<div style=3D"padding: 10px 0 10px 10px; background-color: ivory;"><div>Hel=
lo,</div><div>&nbsp;</div><div>Greetings from Red Hat Product Security!</di=
v><div>&nbsp;</div><div>Your previous email was successfully delivered, and=
 we have already acknowledged your earlier request (INC3342348). We sincere=
ly apologize for any delays on our part. Due to the year-end holidays, we w=
ere operating with limited resources but worked diligently to address each =
request.</div><div>&nbsp;</div><div>The issue is currently under investigat=
ion. I=E2=80=99ve reached out to our Kernel Security Analyst, and they will=
 provide further updates shortly. Please note that all further communicatio=
n will reference INC3342348, which remains open, and you will continue to r=
eceive updates accordingly.</div><div>&nbsp;</div><div>I am closing this th=
read. Thank you for your patience and understanding. We truly appreciate yo=
ur cooperation.</div><div>&nbsp;</div><div>Best Regards,</div><div>Tej Rath=
i</div><div>Security Analyst, Red Hat Product Security.</div></div>
<div><p style=3D"margin-top:20px;margin-bottom:10px;"><strong>How can I tra=
ck and update my request?</strong></p><p style=3D"margin-top:0;margin-botto=
m:10px;">To respond, reply to this email. You may also create a new email a=
nd include the request number (INC3354074) in the subject.</p></div>
<p style=3D"margin-top: 14px; margin-bottom: 0;">Thank you,<br>Product Secu=
rity</p><div>&nbsp;</div><div style=3D"display:inline">Ref:MSG100465771</di=
v></body></html>
------=_Part_246897_2063606462.1737442894346--

------=_Part_246896_824635121.1737442894346
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


------=_Part_246896_824635121.1737442894346
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

------=_Part_246896_824635121.1737442894346--

