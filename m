Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B4269D0CA
	for <lists+jfs-discussion@lfdr.de>; Mon, 20 Feb 2023 16:40:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pU8HN-0004gc-Bb;
	Mon, 20 Feb 2023 15:40:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <me@rubin55.org>) id 1pU4s3-0005RL-KX
 for jfs-discussion@lists.sourceforge.net;
 Mon, 20 Feb 2023 12:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GwKdzqx0LHBBJdsi6MItgNomD0sWz4iI5ztgPKDGBrU=; b=W/gGQqw6kdlvg3Ys6aLCM4RPlx
 Y0d0BZ+e2uwv026IsDmgzTx+9kam6Kk07PqeBK270PddLQPRIq4ssLoZcG6LRVIFHZuzbT8onBmZh
 R2Kt/vUpb8OtuXaXrw8G+vydIKnbCBR1ApzNfKVl0My+q32Al78bYICkroTCnuEMEmTU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GwKdzqx0LHBBJdsi6MItgNomD0sWz4iI5ztgPKDGBrU=; b=Mt5XNWFxDuLqfCcbe3Zv21qj7f
 yGukrihg/Wv8K+HOdMrDAe6ISiaNmR+Zg2udAzOGuM8rFdFsIHJETxaXagO8gXaZ8X+v8LHomAj0Y
 pAiXwRpdnys80N+LMJ6ojyz+0hGvz9vgaviGndIr/f19KsmE4go1s25rnS3RnhvTc4Tw=;
Received: from smtpq1.tb.mail.iss.as9143.net ([212.54.42.164])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pU4rw-0005K9-6d for jfs-discussion@lists.sourceforge.net;
 Mon, 20 Feb 2023 12:02:14 +0000
Received: from [212.54.42.107] (helo=smtp3.tb.mail.iss.as9143.net)
 by smtpq1.tb.mail.iss.as9143.net with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.90_1)
 (envelope-from <me@rubin55.org>) id 1pU4cH-0001RW-Rb
 for jfs-discussion@lists.sourceforge.net; Mon, 20 Feb 2023 12:45:57 +0100
Received: from edge.raaf.local ([83.87.71.29])
 by smtp3.tb.mail.iss.as9143.net with ESMTP
 id U4cHplyR1PuCLU4cHp4NLW; Mon, 20 Feb 2023 12:45:57 +0100
X-Env-Mailfrom: me@rubin55.org
X-Env-Rcptto: jfs-discussion@lists.sourceforge.net
X-SourceIP: 83.87.71.29
X-CNFS-Analysis: v=2.4 cv=Ybd7pSdf c=1 sm=1 tr=0 ts=63f35d75 cx=a_exe
 a=55+TWXFlYidg0d0YyPQsNg==:117 a=55+TWXFlYidg0d0YyPQsNg==:17
 a=m04uMKEZRckA:10 a=xmC3PgOMfwqtXtabtDsA:9
Received: from ORION.raaf.local (orion.raaf.local [172.17.1.14])
 by edge.raaf.local (8.16.1/8.16.1) with ESMTP id 31KBjqMD045980;
 Mon, 20 Feb 2023 12:45:52 +0100 (CET) (envelope-from me@rubin55.org)
From: me@rubin55.org
To: stefan.tibus@gmx.de
Date: Mon, 20 Feb 2023 12:45:52 +0100
Message-Id: <20230220114552.27395-1-me@rubin55.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230119080532.crn7wzo4jz5x5ng3@tibus.st>
References: <20230119080532.crn7wzo4jz5x5ng3@tibus.st>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfDGZ5ZKUvvAAa5LudPpQHQ95+oC0++yU9Fvyn4sk11teR8k5U7roAOqjFugDnQaXYezuvyl99hdeIaiId65AW5f7W+6KmRjqjGb7DttvqP1Zag1ujXHS
 F6ZOZpnBuzq2J7NcV6ag8O/55P3rISBNZq8YJahtYRxeVZKj6Z11dv7NAY3UKwMD/hkvMrAJeaw1W6YtQzYva/M7zfpaoLCLta2NsDNA1bjeeDu31PcRGMZ3
 Ys6zSdAWR8DQ16Bqnc8pDeFtTyuH3TO3aQxGGBn9ygJqHTtyvLCpA5lIfeElKUwk011zwLuLnwZIj0rKMkslOYC1wki8/Og7siwYAJt9rR6UBziJ52HgfCyN
 evY2iWBknZ4YhV66/52BmV+wa7T24t05kOOMY7gWJTkpDbmvpS7aIz6kXC/5q+AvycL8C/GmRBbjexmRDLICNxcbh69fXQ==
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I would also like to chime in as a long time (20+ years?)
 user of JFS. I use JFS for essentially all my Linux boxes, laptops, desktops
 due to its low resource usage and proven dependability. I also really enjoy
 its "naive" implementation of case-insensitivity, which I te [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.54.42.164 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
X-Headers-End: 1pU4rw-0005K9-6d
X-Mailman-Approved-At: Mon, 20 Feb 2023 15:40:35 +0000
Subject: Re: [Jfs-discussion] Should we orphan JFS?
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
Cc: adilger@dilger.ca, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, hch@infradead.org, linux-fsdevel@vger.kernel.org,
 harald@skogtun.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I would also like to chime in as a long time (20+ years?) user of JFS.

I use JFS for essentially all my Linux boxes, laptops, desktops due to
its low resource usage and proven dependability. I also really enjoy
its "naive" implementation of case-insensitivity, which I tend to use
on /home mounted filesystems.

I would really miss JFS for what it's worth and would like to sing its
praises: low resource usage, tried-and-tested stability and for a long
time the only case-insensitive option available (I know about ext4's
new case-folding features of course, but have not had good experiences
with it yet (experienced boot issues with grub, per directory setting)).

Kind regards,


Rubin!


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
