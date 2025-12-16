Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9177CC41B8
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Dec 2025 17:04:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uAkUWywa1wb8LFiDDXslAmmKReSmVru/pEe37XCn93M=; b=DHrYei8gK3m2AOPYW+rzmZadaC
	GArxc2rha2+ou4LFf7DczoJdGRmgphC0CRuh0TQYuBQYiQkS+5LpmLknsMh3ZWhFEA7o85O/kMp6O
	gEmjdsbokhpvVGookOF/UddVoFDBVRP4kR+5Jq5KkSWZntJYIEqopS8yYSdBQm2cYRNg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vVXXJ-00076L-9o;
	Tue, 16 Dec 2025 16:04:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jkoolstra@xs4all.nl>) id 1vVXXH-000762-22
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Dec 2025 16:04:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rZZmoPmLFTT28aJHcJ7F3C9YBmN5x7BEvApdpHyw5Ag=; b=AHVvho9QykxrWsumDrdswtYWtx
 /lq837pPNxPyZmbGV5lhNjgSizrTFPUKrw04axTp6V9JxqP6NQwB1Y1xvuCJ0iaEXFNZoMkG6BGPT
 vBDEExA+XzDnkT+pDDdRvyMfQOPP4hgofLlzWkafxg8WZC+XAh5jBF6rF0hS8WqbEOsk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rZZmoPmLFTT28aJHcJ7F3C9YBmN5x7BEvApdpHyw5Ag=; b=bx962tl6yxpPJT9RCLCwqn/YPV
 mJFnS5cBVF0jZZpPvLIOFZfmKHQHKfj7HTNbiC4Gq+IYqqJi619YdF45+JT4qy3JP5hF4xUGHJL0R
 AVcdCYKBev837oYLglLIWZN4eodOsPIpSdBkPT4xVcbu5raDmIlpclqg8KAtGZMp77IY=;
Received: from ewsoutbound.kpnmail.nl ([195.121.94.184])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vVXXG-0007qs-SI for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Dec 2025 16:04:27 +0000
X-KPN-MessageId: 754140f4-da99-11f0-9e68-005056994fde
Received: from mta.kpnmail.nl (unknown [10.31.161.189])
 by ewsoutbound.so.kpn.org (Halon) with ESMTPS
 id 754140f4-da99-11f0-9e68-005056994fde;
 Tue, 16 Dec 2025 17:08:28 +0100 (CET)
Received: from mtaoutbound.kpnmail.nl (unknown [10.128.135.190])
 by mta.kpnmail.nl (Halon) with ESMTP
 id de62f6c4-da98-11f0-b5be-0050569981f5;
 Tue, 16 Dec 2025 17:04:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=xs4all01;
 h=content-type:mime-version:subject:message-id:to:from:date;
 bh=rZZmoPmLFTT28aJHcJ7F3C9YBmN5x7BEvApdpHyw5Ag=;
 b=CQ3T8e3Rm0K+GPpAv1kbHSl43tZb9Ut+GbWbXvuoHSURs6vYzFATzPta6hSMmZZkVTrBeXc+hy6S5
 iNXfWDvm5dJxpepLUInYP8PHv7ntapmZbzLPrInQ2DVSxRHVRqNA33v6/GoVTHCoFczQgcscL2scFj
 jTDLoohfaeSAX1yoRRlX5Rl8c1QyEZDCNkEqeCNsCxHnWPe6S8gpKQxEi/yY/eIz5sx0oLdPq45+eT
 VLB/+OSfbG8QeA4y4JcKTH1mwktp3wZIP+BpxloYm39XwJPexpQv/G3qVdoUWlwUP7VG1UUk5NQvuU
 EfnFJyi/dismR2mw+KX07DjKHifOI8w==
X-KPN-MID: 33|jRJaxtCYIABCv4Wpm+2Vy6JRCYEeszFx75fIKW9Ywy4nhuySzGT9MGZqexmEbTP
 24i4elbaarv5Ja8nc8Lvu9DmNe5lYCaagpYX6/0oD2ok=
X-CMASSUN: 33|vhrRZ4JOFbUrdRazH0C3yDWTfL5WoOM3ZPlvzduBy7c+jy5959pD4vAuIILKQ53
 4clswTOkmKct2EgLk499KOw==
X-KPN-VerifiedSender: Yes
Received: from cpxoxapps-mh03 (cpxoxapps-mh03.personalcloud.so.kpn.org
 [10.128.135.209]) by mtaoutbound.kpnmail.nl (Halon) with ESMTPSA
 id de560b90-da98-11f0-b8d7-005056995d6c;
 Tue, 16 Dec 2025 17:04:14 +0100 (CET)
Date: Tue, 16 Dec 2025 17:04:14 +0100 (CET)
To: Dave Kleikamp <dave.kleikamp@oracle.com>, brauner@kernel.org,
 gabriel@krisman.be, jlayton@kernel.org, neil@brown.name,
 viro@zeniv.linux.org.uk
Message-ID: <2104030064.2009841.1765901054852@kpc.webmail.kpnmail.nl>
In-Reply-To: <40db68fc-a5a3-4bb2-abc5-b93ee2429602@oracle.com>
References: <20251028232329.430752-1-jkoolstra@xs4all.nl>
 <20251118164645.67401-1-jkoolstra@xs4all.nl>
 <918405804.66343.1764595242232@kpc.webmail.kpnmail.nl>
 <40db68fc-a5a3-4bb2-abc5-b93ee2429602@oracle.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Originating-IP: 178.228.101.123
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello David, Thanks for the update. I hope you can get to
 it soon, but I understand you are busy. I am doing the Linux Kernel Mentorship
 Program, and trying to get my patches in. Hope you don't mind the occasional
 [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [195.121.94.184 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vVXXG-0007qs-SI
Subject: Re: [Jfs-discussion] [PATCH] jfs: dtInsertEntry can result in
 buffer overflow on corrupted jfs filesystems
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
 syzbot+cd7590567cc388f064f3@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello David,

Thanks for the update. I hope you can get to it soon, but I understand you
are busy. I am doing the Linux Kernel Mentorship Program, and trying to get
my patches in. Hope you don't mind the occasional reminder.

> Op 01-12-2025 23:35 CET schreef Dave Kleikamp <dave.kleikamp@oracle.com>:
> 
>  
> On 12/1/25 7:20AM, Jori Koolstra wrote:
> > Below syzbot bug has not been fixed yet. If anyone has time I would
> > greatly appreciate a review of my patch, so it can be moved along.
> > It has been sitting for quite a few weeks.
> 
> I've been busy with some other work as well as being out on vacation 
> lately. I have several patches to review, but have not forgotten this. 
> I'll try to get to it later this week.
> 
> Thanks,
> Shaggy
> 

Thanks,
Jori.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
