Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C483F4DFC
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Aug 2021 18:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Date:Message-ID:MIME-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Je4lh7TehcPhVFVTgMIEZD3LUu6gnWrZvzDTzKyvzQk=; b=GNSxhN9719QSMG2kWd80kh4wfO
	Cl0qucv8/yj6I0T877bOk4n0jFTeoEHyJzpV3A2QHM+qphkVUmC8l7KQOz8BnGrH4B9tbQ+3lK3N/
	aVi4BCytI2plEz7G2p0IIfNVUtsc+kjH9mZYTN4Li5teZl19vj6+KwsA4/SeSs7zQG5E=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mICSy-0007e5-9n; Mon, 23 Aug 2021 16:06:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <postmaster@root.for.sabi.co.uk>) id 1mICSw-0007du-QV
 for jfs-discussion@lists.SourceForge.net; Mon, 23 Aug 2021 16:06:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=From:Subject:To:Date:Message-ID:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wt/Ybh8hWTdmSMnnv9YBtTgxZ/Uzqxp1Tx9/Ff/GGvY=; b=F6kNgPvBVZCAZhE5cIrcFLefE
 UFMjwtXsXfU9QHp3QksxeBEJ2hZscppE5sHVetKUq/PADreBqbajHOKtvRLemVHU8SPLsWnQT9R6M
 rf2YgK8nPjn1kE0GKDXH3E1ZCd+tjbL+9Oaz8KL8sqQqQAmwRZ6upiOeh4CSPouUaZbh8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=From:Subject:To:Date:Message-ID:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wt/Ybh8hWTdmSMnnv9YBtTgxZ/Uzqxp1Tx9/Ff/GGvY=; b=G
 lR7h3Oy8iKQHVFlb/WHwPqtSZUS44Q8WfhZfzbQ/p1inCdAYkBv+JpcZUYKLSqvd4tBmzuoy5zkwa
 XWUTbnlm91MQGT8DXQYRShUiGUIrKUSl5LH/cJpkcveuf6haibgXT8LfvEo388lgQnxtrsh2YIfLw
 UtJJIO+bCTaDDs4s=;
Received: from smtp.sabi.co.uk ([185.17.255.29] helo=sabi.co.uk)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mICSs-00Fx0S-SN
 for jfs-discussion@lists.SourceForge.net; Mon, 23 Aug 2021 16:06:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sabi.co.uk; 
 s=dkim-00;
 h=From:Subject:To:Date:Message-ID:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wt/Ybh8hWTdmSMnnv9YBtTgxZ/Uzqxp1Tx9/Ff/GGvY=; b=GEOB/h8zEMFwIYmSNUwLC+RpdW
 RlMt8DKSt41C3BcdTKVEOTbT+SDV+2Qu6W6F4TuFsd6cmJuyFWl86qBJOSSsCJA8n+FSkwIprBmfN
 YV+ag5P8yz3ZetK52VI1DU2jVJd7VpcFD34bt97XPkGrbRcGvZM/bsZSMe3xUsLWyNoKPIQvLK8qJ
 U2RsNWw4kkgTris+n7B4N6mPd4kTKL8Yp7giJjflaeb1/n9ZVslehQ78Syn4NTJ+4yZ2r1sjkS254
 /OtL19yD1ZTP0pE5ulLk/zNwv1s8MfjaIPxduuqlM8m95k08McBaSc1ufRpdBY2JT4SGmJLurhR3+
 PxcxfrzA==;
Received: from b2b-5-147-245-69.unitymedia.biz ([5.147.245.69] helo=sabi.co.uk)
 by sabi.co.uk with esmtpsa(Cipher
 TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)(Exim 4.93 id
 1mICAJ-007jPy-RD	id 1mICAJ-007jPy-RDby authid <sabity>with cram
 for <jfs-discussion@lists.SourceForge.net>; Mon, 23 Aug 2021 15:47:11 +0000
Received: from [127.0.0.1] (helo=cyme.ty.sabi.co.uk)
 by sabi.co.uk with esmtp(Exim 4.93 5) id 1mICAF-005JHe-Bq
 for <jfs-discussion@lists.SourceForge.net>; Mon, 23 Aug 2021 17:47:07 +0200
MIME-Version: 1.0
Message-ID: <24867.49915.325040.460629@cyme.ty.sabi.co.uk>
Date: Mon, 23 Aug 2021 17:47:07 +0200
Precedence: air-mail
To: list Linux fs JFS <jfs-discussion@lists.SourceForge.net>
X-Mailer: VM 8.2.0b under 26.3 (x86_64-pc-linux-gnu)
X-Disclaimer: This message contains only personal opinions
X-Blacklisted-At: 
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I seem to remeber that OS/2 JFS2 and thus Linux JFS2 have
 a vestigial feature,
 that in theory their architecture support multiple per-filesystem
 instance root directories, which in theory could be mou [...] 
 Content analysis details:   (0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1mICSs-00Fx0S-SN
Subject: [Jfs-discussion] historical detail: multiple filesystem instance
 roots?
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
From: Peter Grandi via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Peter Grandi <pg@jfs.list.sabi.co.UK>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I seem to remeber that OS/2 JFS2 and thus Linux JFS2 have a
vestigial feature, that in theory their architecture support
multiple per-filesystem instance root directories, which in
theory could be mounted at different mount point paths, even if
this feature is not supported or available. I guess that would
mean multiple B-trees, but I am not sure.

If this is true, were they designed so that the independent root
directories would share the same device-id and i-number space or
each would have a different device-id and a distinct i-number
name space?


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
