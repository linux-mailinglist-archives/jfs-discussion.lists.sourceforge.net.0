Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4758A3C237
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 15:34:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkl8r-0003bh-3U;
	Wed, 19 Feb 2025 14:33:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <secalert@redhat.com>) id 1tkf8V-0006Hu-QQ
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 08:08:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:Subject:
 Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xyLKKoZPz9q2kk+7f+eYUvaIEie+iOj/PFAsIy7OFKo=; b=RJbaTEwrXIZ7wOTyBI6LMSIDC5
 r/Dw/jt4g5g3u+IpCZFceftN/n7s3UMeAH2/p+VD6cRBrm+i+CwiKKaEiprJEWE1gV6HQpKPViQXn
 cUuhRxhxT0E4PXJaYjMh7bIPK+aPXdGfMcXLWo+c4RZcfz/GU8f+sOGhXJ2jVyWvAn50=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:Subject:Message-ID:To:Reply-To
 :From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=xyLKKoZPz9q2kk+7f+eYUvaIEie+iOj/PFAsIy7OFKo=; b=Q0slO9kQP47P
 +PeRP8F264nXlQkHKgtIxD/xM/xfpKW99McOmuVrOMUGcBy7lCbSiE9Z9OourTZtfpaF2QNl8p2cU
 dUZs2/i1+OHvjo6Ynl18F5NLs4+AjR0sHQvg40WMfCtwS4BeI/3JhvjNGeJiuoio1xELrklaKxkAN
 0uTxQ=;
Received: from outbound403.service-now.com ([149.96.6.209])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tkf8V-0003OK-C2 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 08:08:52 +0000
Received: from outbound22.service-now.com (unknown [10.248.3.211])
 by outbound403.service-now.com (Postfix) with ESMTPS id 4D3C236E0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Feb 2025 00:08:40 -0800 (PST)
Received: from app132146.ycg201.service-now.com (unknown [10.248.3.236])
 by outbound22.service-now.com (Postfix) with ESMTP id E36D46000089;
 Wed, 19 Feb 2025 00:08:36 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 outbound22.service-now.com E36D46000089
Date: Wed, 19 Feb 2025 00:08:36 -0800 (PST)
To: syzkaller@googlegroups.com, liujingfeng@qianxin.com, shaggy@kernel.org,
 rkeshri@redhat.com, security@kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Message-ID: <1097140732.33089.1739952516920@app132146.ycg201.service-now.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
 boundary="----=_Part_33087_55735206.1739952516920"
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
 Content preview: Hello! INC3389413 (FW: GPF and null-ptr-deref caused by
 uninitialization
 of jfs module(INC3342348)) has been updated. Opened for:
 liujingfeng@qianxin.com
 Followers: security@kernel.org, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, Rohit Keshri, syzkaller@googlegroups.com 
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1tkf8V-0003OK-C2
X-Mailman-Approved-At: Wed, 19 Feb 2025 14:33:34 +0000
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

------=_Part_33087_55735206.1739952516920
Content-Type: multipart/alternative; 
	boundary="----=_Part_33088_26762839.1739952516920"

------=_Part_33088_26762839.1739952516920
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hello!

INC3389413 (FW: GPF and null-ptr-deref caused by uninitialization of jfs mo=
dule(INC3342348)) has been updated.

Opened for: liujingfeng@qianxin.com
Followers: security@kernel.org, shaggy@kernel.org, jfs-discussion@lists.sou=
rceforge.net, linux-kernel@vger.kernel.org, Rohit Keshri, syzkaller@googleg=
roups.com

A Guest updated your request with the following comments:

Reply from: liujingfeng@qianxin.com [mailto:liujingfeng@qianxin.com]
 > On Mon, Feb 10, 2025 at 10:09:54AM +0800, =E6=9F=B3=E8=8F=81=E5=B3=B0 wr=
ote:
> > Hello,Here is forward INC3342348 origin message
> >
> > I hope to receive updated response regarding this issue.
>=20
> We have no lack of syzbot reported issues, what we do have is a lack of p=
eople
> fixing them, so patches are always welcome, especially as you already hav=
e a
> working reproducer for the problem to test against.
>=20
> thanks,
>=20
> greg k-h
 Hello,I try to do it.
 TxBegin returns 0 because the file system is read-only, and TxBlock [tid=
=3D0] is a reserved block, so I tried to perform a read-only file system ch=
eck in the jfs_create function. This should prevent crashes, but I'm not su=
re if it affects the original logic. I hope developers can help check this =
patch.
  diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index d68a4e6ac345..4b6d85d47c3a 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -77,6 +77,10 @@ static int jfs_create(struct mnt_idmap *idmap, struct in=
oded,
 if (rc)
 goto out1;
+ if (isReadOnly(dip)){
+ rc=3D-EROFS;
+ goto out1;
+ }
 /*
 * search parent directory for entry/freespace
 * (dtSearch() returns parent directory page pinned)

How can I track and update my request?

To respond, reply to this email. You may also create a new email and includ=
e the request number (INC3389413) in the subject.

Thank you,
Product Security

Ref:MSG101796497
------=_Part_33088_26762839.1739952516920
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div><p style=3D"margin-top:0;margin-bottom:10px;"=
>Hello!</p><p style=3D"margin-top:0;margin-bottom:10px;">INC3389413 (FW: GP=
F and null-ptr-deref caused by uninitialization of jfs module(INC3342348)) =
has been updated.</p><p style=3D"margin-top:0;margin-bottom:10px;">Opened f=
or:&nbsp;liujingfeng@qianxin.com<br>Followers:&nbsp;security@kernel.org, sh=
aggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-kernel@vger.ke=
rnel.org, Rohit Keshri, syzkaller@googlegroups.com</p></div>
<p style=3D"margin-top: 10px; margin-bottom: 10px;">A Guest updated your re=
quest with the following comments:</p>
<div style=3D"padding: 10px 0 10px 10px; background-color: ivory;"><div>Rep=
ly from: <a target=3D"_blank" href=3D"mailto:liujingfeng@qianxin.com" rel=
=3D"noopener noreferrer nofollow">liujingfeng@qianxin.com</a></div><div>&nb=
sp;</div><div>&gt; On Mon, Feb 10, 2025 at 10:09:54AM +0800, =E6=9F=B3=E8=
=8F=81=E5=B3=B0 wrote:</div><div>&gt; &gt; Hello,Here is forward INC3342348=
 origin message</div><div>&gt; &gt;</div><div>&gt; &gt; I hope to receive u=
pdated response regarding this issue.</div><div>&gt; </div><div>&gt; We hav=
e no lack of syzbot reported issues, what we do have is a lack of people</d=
iv><div>&gt; fixing them, so patches are always welcome, especially as you =
already have a</div><div>&gt; working reproducer for the problem to test ag=
ainst.</div><div>&gt; </div><div>&gt; thanks,</div><div>&gt; </div><div>&gt=
; greg k-h</div><div>&nbsp;</div><div>Hello,I try to do it.</div><div>&nbsp=
;</div><div>TxBegin returns 0 because the file system is read-only, and TxB=
lock [tid=3D0] is a reserved block, so I tried to perform a read-only file =
system check in the jfs_create function. This should prevent crashes, but I=
'm not sure if it affects the original logic. I hope developers can help ch=
eck this patch.</div><div>&nbsp;</div><div>&nbsp;</div><div>diff --git a/fs=
/jfs/namei.c b/fs/jfs/namei.c</div><div>index d68a4e6ac345..4b6d85d47c3a 10=
0644</div><div>--- a/fs/jfs/namei.c</div><div>+++ b/fs/jfs/namei.c</div><di=
v>@@ -77,6 +77,10 @@ static int jfs_create(struct mnt_idmap *idmap, struct =
inoded,</div><div>        if (rc)</div><div>                goto out1;</div=
><div> </div><div>+       if (isReadOnly(dip)){</div><div>+               r=
c=3D-EROFS;</div><div>+               goto out1;</div><div>+       }</div><=
div>        /*</div><div>         * search parent directory for entry/frees=
pace</div><div>         * (dtSearch() returns parent directory page pinned)=
</div></div>
<div><p style=3D"margin-top:20px;margin-bottom:10px;"><strong>How can I tra=
ck and update my request?</strong></p><p style=3D"margin-top:0;margin-botto=
m:10px;">To respond, reply to this email. You may also create a new email a=
nd include the request number (INC3389413) in the subject.</p></div>
<p style=3D"margin-top: 14px; margin-bottom: 0;">Thank you,<br>Product Secu=
rity</p><div>&nbsp;</div><div style=3D"display:inline">Ref:MSG101796497</di=
v></body></html>
------=_Part_33088_26762839.1739952516920--

------=_Part_33087_55735206.1739952516920
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


------=_Part_33087_55735206.1739952516920
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

------=_Part_33087_55735206.1739952516920--

