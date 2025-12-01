Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A710C978A7
	for <lists+jfs-discussion@lfdr.de>; Mon, 01 Dec 2025 14:17:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NNVLb2BXnnEsv67oFExMPFsLUtEQQSnn7XstxSuEQfs=; b=nOaaFEDyUk3OJpcveuCKwrWbLQ
	qvww/6pWA//Yy+o7wPqfIsK1ILX1pm5THV4AFB8XXnjFjDOfsBwWpFoiDZa56wHCYT2f5wBgyLWn7
	VF6MMy15nMvskM/WgY6bKds3hhyactXCniCtldzLuctKG85Tn8lDDqSmRaMAfS5RcigY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vQ3mG-00062T-N7;
	Mon, 01 Dec 2025 13:17:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jkoolstra@xs4all.nl>) id 1vQ3mF-00062M-9B
 for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Dec 2025 13:17:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ogpGpze997OiKUWLBB1tTc91EG3DgUJBfa5dKno3c4=; b=X4logsX9hU6RvQJpN2WEIoM7C4
 bFTsBpoZTr6XwmHTC/ePiGv4h9OOpnfeCKmwDlC18eaZEc/hoYvguWzpacb1CO1xIgDaBpoJHl6h0
 9tnqW3PkUy1qqgFgTsAarxDstR+sa1XjdPdLRwlAjtxUiKg9HNOXqU2cw+GKhVR6g1oo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9ogpGpze997OiKUWLBB1tTc91EG3DgUJBfa5dKno3c4=; b=VIBUjwlOIY4009vAga80QBP9V+
 4IE4V2hA49xbJSYfZ1AMt6K7yPhQaGqqcpBoLF/TblZUJEwWxWboWpDMKtTDtal0kQKrp55tHbRGQ
 OoovFulQZBF+Dx+9pN8MyBru5xJzF3D2QDhdkKDJoDuXBCCWzEPbZcG9XBIu6Sc3kDdo=;
Received: from ewsoutbound.kpnmail.nl ([195.121.94.185])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vQ3mE-0004fJ-DG for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Dec 2025 13:17:15 +0000
X-KPN-MessageId: 40dd8a6c-ceb8-11f0-ad1a-005056999439
Received: from mta.kpnmail.nl (unknown [10.31.161.190])
 by ewsoutbound.so.kpn.org (Halon) with ESMTPS
 id 40dd8a6c-ceb8-11f0-ad1a-005056999439;
 Mon, 01 Dec 2025 14:18:40 +0100 (CET)
Received: from mtaoutbound.kpnmail.nl (unknown [10.128.135.189])
 by mta.kpnmail.nl (Halon) with ESMTP
 id 068e2198-ceb8-11f0-99c0-0050569977a2;
 Mon, 01 Dec 2025 14:17:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=xs4all01;
 h=content-type:mime-version:subject:message-id:to:from:date;
 bh=9ogpGpze997OiKUWLBB1tTc91EG3DgUJBfa5dKno3c4=;
 b=T7OOn5BwSXh2dB8SVVYN3zfo2GzPo5TJnaxrYYoDHUgQTbpHSgsmzXhQ2HKjpgCm7kNRWoe6wOPAl
 XBRsX29NrcnNKD29TE3O9YJcczRkfCvCYWnQDBtXD094+AoiANQAsNpCeEt5xBNym60sBEL3m6Ujin
 Cm088IbJDQgLgwebsEeLlDQeILkr4rw9HUh6q0Kc9c8b2UKRQqvnCCkPxEu2HzYPcR6c9PY6NhktqV
 sMjZFExVS9h7TPXcRVvSCZVUYIdr1XnV1oja+UPYctLMlVn3ixuUAEYW/L94G7P2iqIEELe0sqeEZE
 dcJYmaNy7iC0Aa7zGK7oz2l05KVIWbw==
X-KPN-MID: 33|eQLS9dXDoBhz0AW0sauyOnKv/CSwqAUXSc5/o5x//es2pX4ylx6SaW4lkvokntj
 mTxwQ6CUlSX6EYT06xVA/A9jlAInApAc8wDf6xnqn1RM=
X-CMASSUN: 33|XBeKen1quebrvWGEjhb7FamjJhBcD+9wnDqIz4fd7kJg3Ka2ZAgYqSOawtYtjPp
 Q3rGb++as8Ir1k+hKXjCqZg==
X-KPN-VerifiedSender: Yes
Received: from cpxoxapps-mh04 (cpxoxapps-mh04.personalcloud.so.kpn.org
 [10.128.135.210]) by mtaoutbound.kpnmail.nl (Halon) with ESMTPSA
 id 06868ad6-ceb8-11f0-94b1-00505699eff2;
 Mon, 01 Dec 2025 14:17:02 +0100 (CET)
Date: Mon, 1 Dec 2025 14:17:02 +0100 (CET)
To: brauner@kernel.org, gabriel@krisman.be, jlayton@kernel.org,
 neil@brown.name, shaggy@kernel.org, viro@zeniv.linux.org.uk
Message-ID: <1228067824.65484.1764595022724@kpc.webmail.kpnmail.nl>
In-Reply-To: <20251118163926.65737-1-jkoolstra@xs4all.nl>
References: <20251028122212.290745-1-jkoolstra@xs4all.nl>
 <20251118163926.65737-1-jkoolstra@xs4all.nl>
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Originating-IP: 178.231.9.90
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Below syzbot bug has not been fixed yet. If anyone has time
 I would greatly appreciate a review of my patch, so it can be moved along.
 It has been sitting for quite a few weeks. Thanks, Jori. > Op 28-10-2025
 13:22 CET schreef Jori Koolstra <jkoolstra@xs4all.nl>: > > > If nlink is
 maximal
 for a directory (-1) and inside that directory you > perform a rename for
 some child directory (not mov [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vQ3mE-0004fJ-DG
Subject: [Jfs-discussion] [PATCH] jfs: nlink overflow in jfs_rename
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Jori Koolstra via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jori Koolstra <jkoolstra@xs4all.nl>
Cc: jfs-discussion@lists.sourceforge.net, skhan@linuxfoundation.org,
 linux-kernel@vger.kernel.org,
 syzbot+9131ddfd7870623b719f@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Below syzbot bug has not been fixed yet. If anyone has time I would
greatly appreciate a review of my patch, so it can be moved along.
It has been sitting for quite a few weeks.

Thanks,
Jori.
 
> Op 28-10-2025 13:22 CET schreef Jori Koolstra <jkoolstra@xs4all.nl>:
>
>
> If nlink is maximal for a directory (-1) and inside that directory you
> perform a rename for some child directory (not moving from the parent),
> then the nlink of the first directory is first incremented and later
> decremented. Normally this is fine, but when nlink = -1 this causes a
> wrap around to 0, and then drop_nlink issues a warning.
> 
> After applying the patch syzbot no longer issues any warnings. I also
> ran some basic fs tests to look for any regressions.
> 
> Signed-off-by: Jori Koolstra <jkoolstra@xs4all.nl>
> Reported-by: syzbot+9131ddfd7870623b719f@syzkaller.appspotmail.com
> Closes: https://syzbot.org/bug?extid=9131ddfd7870623b719f


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
