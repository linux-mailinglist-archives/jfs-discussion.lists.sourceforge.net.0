Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 743F51BB76C
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 Apr 2020 09:26:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jTKdZ-0006cA-H0; Tue, 28 Apr 2020 07:26:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lists@nerdbynature.de>) id 1jTKdX-0006bs-Q2
 for jfs-discussion@lists.sourceforge.net; Tue, 28 Apr 2020 07:26:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ssQb2gi74jN5ozX4AcczQ5I/gcCDt7xWw8P0zmG8paU=; b=U7tUrLsTX1VwrOU1uNyFpowrKc
 25T3KEOcfqvAPxlLEGNcBkOOGjpOovgiahSfjWQCb1mgKkaqQPZ1c9cZ5T8supwN06lgQgoSTUEBa
 MskdB3JhpI5+mhx+Rqs98PBigbMPKfur2bMVEcsFLV+cOZKoJ4U2ihrQJ96wpLsW3qSo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ssQb2gi74jN5ozX4AcczQ5I/gcCDt7xWw8P0zmG8paU=; b=AGDhJZSx4P9S2dRdujyzG4o0AT
 eeJJpJUHy0Q6qwRR6NKNCzeRJqPG78ntA7TyTuqnC4vwxgqpGQhBi6TsgL6So8p+QamY6QSVULkGv
 cD+D22NG0Bq4w/uDndizIFrcD6p3cG7Quci8a/jktUrBWG6JgbtcYKSY3XhmZJJmekOo=;
Received: from trent.utfs.org ([94.185.90.103])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jTKdT-000yfr-V9
 for jfs-discussion@lists.sourceforge.net; Tue, 28 Apr 2020 07:26:35 +0000
Received: from localhost (localhost [IPv6:::1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by trent.utfs.org (Postfix) with ESMTPS id A8AC95FD3A;
 Tue, 28 Apr 2020 09:07:43 +0200 (CEST)
Date: Tue, 28 Apr 2020 09:07:43 +0200 (CEST)
From: Christian Kujau <lists@nerdbynature.de>
To: Lewis G Rosenthal <lgrosenthal@2rosenthals.com>
In-Reply-To: <5E9BE1D9.701@2rosenthals.com>
Message-ID: <alpine.DEB.2.22.395.2004280859300.10513@trent.utfs.org>
References: <5E9BE1D9.701@2rosenthals.com>
User-Agent: Alpine 2.22 (DEB 395 2020-01-19)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: os2ezine.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jTKdT-000yfr-V9
Subject: Re: [Jfs-discussion] [SOT] JFS on OS/2: LVMALERT technical info
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
Cc: JFS Discussion List <jfs-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, 19 Apr 2020, Lewis G Rosenthal wrote:
> Does anyone happen to have any technical info on the purpose of LVMALERT.EXE?
> On OS/2, this is normally run as a daemon, started in CONFIG.SYS from a RUN

You may have found out by now, but an OS/2 eZine page[0] described it as:

  "Support program for the Logical Volume Manger, introduced since WSeB."

And another page[1] lists the program as "not necessary" and remarks:

  "LVMALERT.EXE gives a warning if you use fdisk"

So, maybe LVMALERT isn't needed after all for LVM to function?

In any case, I'd suggest to contact more OS/2 centric communities out 
there (forums, mailinglists, IRC channels), they may be able to provide 
more meaningful information than my web searches from above.

Good luck,
C.

[0] http://www.os2ezine.com/20030516/page_4.html
[1] https://vissesh.home.xs4all.nl/multiboot/ecs-os2/lvm.html
-- 
BOFH excuse #183:

filesystem not big enough for Jumbo Kernel Patch


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
