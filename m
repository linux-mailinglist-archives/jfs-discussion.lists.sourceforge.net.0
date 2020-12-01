Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5042C9636
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Dec 2020 05:01:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kjwr2-00073R-Ln; Tue, 01 Dec 2020 04:01:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <doark@mail.com>) id 1kjwr1-00073H-GG
 for jfs-discussion@lists.sourceforge.net; Tue, 01 Dec 2020 04:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mqVwYAjEoGExVhKOLJDFgvZc6BOK/pm96VonA3IeiNY=; b=H55B3nF+hDJQesWIiK3nLowP70
 TT778VnQKkrTmb6dj6clCkv5b+fK+IH4gGpwbf7rkKRI9AMRkPZa3G7Y5nRrXECROse7uVChp4ykn
 5Iy7WZKZi5vSiXSaTj1RbIkZlRpIrQ8JH/CoYStRjTRQNyWsXnMv7kAsE91SlqXhCTwk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To
 :From:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mqVwYAjEoGExVhKOLJDFgvZc6BOK/pm96VonA3IeiNY=; b=A
 /MG57YqUVUXZLswIF/aEwELP9PD2mtPUD0xLb3CQlQPARyBLWH+v8xAWs7tNHR66QZkwNs0mnqXFK
 edF5cHO3LUnX2+84yHWGZbmxIHrnB0WgX4nBebJopfuKx+ZyWUR4ERbbkSfteb6eV8rJnW4PhkLLH
 QkqFJl0E6kIyqM+k=;
Received: from mout.gmx.com ([74.208.4.200])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kjwqr-00DIwI-VB
 for jfs-discussion@lists.sourceforge.net; Tue, 01 Dec 2020 04:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.com;
 s=dbd5af2cbaf7; t=1606795268;
 bh=mqVwYAjEoGExVhKOLJDFgvZc6BOK/pm96VonA3IeiNY=;
 h=X-UI-Sender-Class:Date:From:To:Subject;
 b=f6oPtYVIJzHAVhUKeQwFg3lwoNOYDEA9/wZ5oYnxStyLh99Vs5Tts7bv2zEhMr6gn
 0024D1xaDiKRdpPYWIFkxBAjQ0UXDGDhjhlfaiw42d/0IMytfBD+g1+HQgBPgo0X7p
 tq1Xi2lk5jRMAjnfSB/A4AfoLf6wjC1NJ068AQ1U=
X-UI-Sender-Class: 214d933f-fd2f-45c7-a636-f5d79ae31a79
Received: from Phenom-II-x6.niklas.com ([71.208.76.224]) by mail.gmx.com
 (mrgmxus005 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MREsb-1kcVQJ24A3-00UZ9u
 for <jfs-discussion@lists.sourceforge.net>; Tue, 01 Dec 2020 05:01:08 +0100
Date: Mon, 30 Nov 2020 23:01:06 -0500
From: David Niklas <doark@mail.com>
To: jfs-discussion@lists.sourceforge.net
Message-ID: <20201130230106.7786b37a@Phenom-II-x6.niklas.com>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:iIRAg59293aV+hsWjSIGCQXG+vuvtmYHIX8QCBRD6e7Fja1BE1B
 vwMzQYE8F5FWsMsiBiCwO/nn+kF0qjka8ozmFajiqjWSB7+OnCuuczswumECd1ahHYh23G8
 yb+nIpKQtGWtfC4cYBSf3k6V7ligOXtCs5gzs8lNWGch1Odsj9nHCH2I+9zHBRK8KFIObo2
 mDl+f2OoNiWmdp3FkmWaA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iDASByghmO8=:egqRmCz5hMQOJWykThLCLk
 3JD0ktaREpW+mikMA4gBceuQWNQvRVUr/w3h1D/VyF7/hDO0eEnBaLQrX1WuM/TEsIUqAhK1k
 sGRUoYsHbBj+uPGnQoBveoBHTuqWoB5T8wQODslbs5SXkqj4bWvKK+VrC5VwYsQWbNk7v3qKu
 QKCZacRjFEPN17xnB0CQHU+D2Nl4fqWvVUMXTTMp8Akj7AVuPpYIcD1HfUpFrBOa4uckLNxAg
 f8tAug4r3rmHxHqpnTr57JKZfzo1SXCNXpEVFjFd2sG9rtvIvFj6/zedFWpIAlSzpy+twlVz+
 kied/u0EtzBw8VnfhaK5xxuVUnHvpptRuD1fpFLPEiBrFhdjnwSqKy+nFeu6EmEfwdOs3kqpq
 X6F6EtentuUc/XTtIRrpLdMrxgHboa63G+uaAwOdsmS6iwcXXmE+2VtTkXhybJmv/AoyivplP
 FKpGEj1CXFdO1SHFVOXH3NkkjmR1B1iv3TgnttJMi8E/zDjs4EVtfVIhttCErgwM3+PPJFM//
 z8117aA6DQ1kMR9fLTKxeiehVrLXlUiRC1WQhl3t4bL3C4s0Afkv+3rqh/idHbYZfNQPosOpY
 jZlkEf74IXVf+TzTOHpYkv86vbS3OiWOdZHLZiVT9AYvWjigDaZOB89YiLUFFPYSs+1RrEO79
 g2kGlamvFNLciI8tZw9pWUzeJo/UvR7eaOCD3RQ1EdTJgPjVaVu9vZFtHrQVVELhx38zEVARE
 J5mOfhe/tijL6rNzbPu/5GaZxrXaVbM/aI6lB0vd0oH6Y0RfxaO73zylknXCk8dH6xTRxDF7k
 Rpgrl0y/6+u9czFDJzs2MWgje+MSmoUBxIZObkEfGN2bbBLb+f4iXYd2aErUmYu1fja/7A+QP
 WlMqWZucaoZ6ftY+nscw==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (doark[at]mail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [74.208.4.200 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kjwqr-00DIwI-VB
Subject: [Jfs-discussion] MB <-> HDD incompatibility. Crash. I/O error.
 Trying to update backup.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi,
I've been trouble shooting HDDs to MB communication errors for over a
week now and I found out that one of my HDDs doesn't like to talk to my
MBs SATA port. The MB is a ASRock B550 TAICHI. It's port is backed by the
ASMedia ASM1061. The exact errors were READ and WRITE FPDMA QUEUED.
I've found a solution in swapping the HDD SATA cables around to get a
working solution.

Of course, this seems that it wouldn't involve JFS, but I wanted to
explain exactly what my situation is.

During my experiments trying to find what was causing the problems I
accidentally disconnected some of my drives. They are in RAID6/60. On top
of that RAID6/60 array is JFS.

Ever since that time, I've gotten constant "metapage_read_end_io: I/O
error" messages from my kernel. I can't fsck the FS.
I have a backup and I want to bring it up-to-date with the current state
of the FS. The problem is that I keep getting those errors.
I diff'ed one of the dirs and dar says that everything is there and
intact, but I got a lot of those errors.

I need to know, do they mean?
What is a metapage?
Is it a temporary failure? Is it a permanent "can't access this sector"
error?

Thanks,
David


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
