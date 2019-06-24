Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AF550F5D
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Jun 2019 16:59:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hfQQy-0001QB-IA; Mon, 24 Jun 2019 14:59:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tytso@mit.edu>) id 1hfQQv-0001Pu-69
 for jfs-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 14:59:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3K9zGsG+U0opfMIL4pc4Yc/I8E/8NfyP3phg6CbFRAQ=; b=XC+0xmYVsppuW2ZoEY/oVIziuq
 0rq7DDSdpPpIrU3oMhIL0v8D+q5jxgNyNmKA+KLHjG48DWpX+dobdgsEcNAfIwIia+oC4DRGWzgRu
 hxrPaR98dcO50lZjD/YbUErovLaibmxO1a9yrL2lmkhKkJe4+0lZtg86HFW5WIb1kL38=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3K9zGsG+U0opfMIL4pc4Yc/I8E/8NfyP3phg6CbFRAQ=; b=Q
 gHEUGUtJCX/rOsOnK8BYP8g7VopRe/prMjh3O6SI8g5aQIJz2P7NiHimY9QQbDPn+z2kCrNejMGOd
 sst2MUTeYgkPAU0bGpqwQzgEXBIqj8fbRlhEyB2NCSY3gNzOVfLrUqFiAI7aTjCVP2t6/cuWaTArZ
 kM/KhSsvp7bbVXHU=;
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfQQz-00CAnr-9C
 for jfs-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 14:59:07 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-109.corp.google.com
 [104.133.0.109] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x5OEwupt016785
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 24 Jun 2019 10:58:57 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id EC72D42002B; Mon, 24 Jun 2019 10:58:55 -0400 (EDT)
Date: Mon, 24 Jun 2019 10:58:55 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: shaggy@kernel.org
Message-ID: <20190624145855.GA7748@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hfQQz-00CAnr-9C
Subject: [Jfs-discussion] Running xfstests on the JFS file system
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
Cc: jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi Shaggy,

I hope this note finds you well.  Out of curiousity, I recently
extended {kvm,gce}-xfstests[1][2] to run tests for JFS.

[1] http://thunk.org/gce-xfstests
[2] https://github.com/tytso/xfstests-bld/blob/master/Documentation/gce-xfstests.md

When I ran those tests, I noted that a lot of tests were failing:

TESTRUNID: tytso-20190624085231
KERNEL:    kernel 5.2.0-rc2-xfstests-00018-gd0191a583b08 #1083 SMP Sun Jun 23 22:24:13 EDT 2019 x86_64
CMDLINE:   -c jfs -g auto
CPUS:      2
MEM:       7680

jfs/default: 864 tests, 55 failures, 312 skipped, 4932 seconds
  Failures: generic/034 generic/039 generic/040 generic/041
    generic/056 generic/057 generic/065 generic/066 generic/073
    generic/079 generic/083 generic/090 generic/101 generic/104
    generic/106 generic/107 generic/204 generic/226 generic/258
    generic/260 generic/269 generic/288 generic/321 generic/322
    generic/325 generic/335 generic/336 generic/341 generic/342
    generic/343 generic/348 generic/376 generic/405 generic/416
    generic/424 generic/427 generic/456 generic/467 generic/475
    generic/479 generic/480 generic/481 generic/489 generic/498
    generic/502 generic/510 generic/520 generic/526 generic/527
    generic/534 generic/535 generic/537 generic/547 generic/552
    generic/557
Totals: 552 tests, 312 skipped, 55 failures, 0 errors, 4905s

Quite a number of these test failures (at least 65%) apparently are
linked to the fact that apparently JFS doesn't replay the journal in
the kernel, and requires that fsck.jfs be run to do that journal
replay.  Is that correct?  That at least appears to be my superficial
analysis, but I'm not 100% sure because when you mount a file system
which is need of a journal replay, the mount system call returns with
an EINVAL error, and so the mount program prints:

mount: wrong fs type, bad option, bad superblock on /dev/mapper/flakey-test,
       missing codepage or helper program, or other error

       In some cases useful info is found in syslog - try
       dmesg | tail or so.

Unfortunately, there is nothing in dmesg; so it's not entirely clear
why JFS kernel code was unhappy enough to return EINVAL.  I know that
you're only supporting JFS on a best-efforts basis, but I see that
you're still sending commits to Linus, so perhaps this is something
that you might be interested in improving?

In terms of fixing the xfstests failures, I *think* what we should do
is to prefix all attempts to mount a JFS file system --- or at least
those after a deliberate attempt to simulate a power fail condition,
such as when using _dmflakey_drop_and_remount with:

     /sbin/fsck.jfs --replay_journal_only <device>

However, the following comments in the fsck.jfs man page give me
pause:

       --replay_journal_only
              Only replay the transaction log.  Do not continue with a
              full file system check if the replay fails or if the
              file system is still dirty even after a journal replay.
              In general, this option should only be used for
              debugging purposes as it could leave the file system in
              an unmountable state....

Under what conditions will fsck.jfs --replay_journal_only leave the
file system in an unmounting state?  Assuming a bug-free(tm) kernel,
and perfect hardware that never has any I/O errors or media-induced
corruptions, should "fsck.jfs --replay_journal_only" always work?
Under what conditions might it not?

Thanks,

						- Ted


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
