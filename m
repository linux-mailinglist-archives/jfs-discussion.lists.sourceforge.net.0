Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A742CAD03
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Dec 2020 21:09:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kkBxK-00010z-1T; Tue, 01 Dec 2020 20:08:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <doark@mail.com>) id 1kkBxI-00010p-LQ
 for jfs-discussion@lists.sourceforge.net; Tue, 01 Dec 2020 20:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eCkGdy1KbjCUhDcI4coCae35QLrc6ZDEvZL1Fk/s7kg=; b=kG/Tv9JA3KdzfqR4kjDWj/qe8A
 uHjFIGl5ScnOdHGy/8ueciLfVoEzcymwQ60xt+fE3Kt4RLC78fExy6KDIrcdHQiIO997CgXPkYCmR
 +9mJVB99V/cBBr9RQObxjnYI8Hsyo+4hVR/bjePqAhFDqQ6amg50xkt/odDdv3nDFtJY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eCkGdy1KbjCUhDcI4coCae35QLrc6ZDEvZL1Fk/s7kg=; b=mqdrvS+hWpqwdj55Lj7e/NcUo2
 HKlwtjsLNRi6Lsj77rhwpnTn/tfhdM8MGJv2wZdsnSsfQPdLlpYRDdbO6nfYro5d6T2o47MFB7xFL
 WMyvtm3dxDYhK72RzXp5KB3QWqw7HPFI9av1zMtcI49au2IMi0gfu07KyZlMguXDtEsE=;
Received: from mout.gmx.com ([74.208.4.201])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kkBxC-00Ecqc-Na
 for jfs-discussion@lists.sourceforge.net; Tue, 01 Dec 2020 20:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.com;
 s=dbd5af2cbaf7; t=1606853318;
 bh=eCkGdy1KbjCUhDcI4coCae35QLrc6ZDEvZL1Fk/s7kg=;
 h=X-UI-Sender-Class:Date:From:To:Subject:In-Reply-To:References;
 b=KuccM2GbA8Lcvs17bTChMnogkTgbRSzFuqlMs1Mi0QqQNBhwTvPriM3aGMqkwY67j
 Uu4M6VH0k9ZqaCElZLPW6g6DU7JwVs6ulLgUDSarHNQUi7oMmiT1uizjOJSBcK+KFR
 owgljaOExR0x2IAHNskk4EDSbdj34UURXmPTOZ8Y=
X-UI-Sender-Class: 214d933f-fd2f-45c7-a636-f5d79ae31a79
Received: from Phenom-II-x6.niklas.com ([71.208.76.224]) by mail.gmx.com
 (mrgmxus004 [74.208.5.15]) with ESMTPSA (Nemesis) id 0LcixN-1kIFWs2rWZ-00kA9o
 for <jfs-discussion@lists.sourceforge.net>; Tue, 01 Dec 2020 21:08:37 +0100
Date: Tue, 1 Dec 2020 15:08:35 -0500
From: David Niklas <doark@mail.com>
To: jfs-discussion@lists.sourceforge.net
Message-ID: <20201201150835.4d51a5ec@Phenom-II-x6.niklas.com>
In-Reply-To: <aeabe636-8be8-9477-659d-af878528b410@oracle.com>
References: <20201130230106.7786b37a@Phenom-II-x6.niklas.com>
 <aeabe636-8be8-9477-659d-af878528b410@oracle.com>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:3FHpbNvAuhcErQe3sVuxtYDGbBCI9z82L28kQRl6aIypf6abXIC
 pRC8/xccDXAr9JoLI8SXF2WBbmKqAYEsdYk9+EzjQc3DEUAOPSwHEBTw/tjGsp9BF+97OOr
 u2pa1qvGBVemU2vHQ5HJLq5MGw+3gv1lsr3GJxnlNVx6JlKsB4ZMtwJgRjbDWU/eYX6Djl/
 f6iehh77EZ0ksOvPlRqaQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bxVnshDi4QU=:/o4SAHoixI/fh5gCp/olcT
 tV8kKFTHTgMNAqcgB4jo/OSjevJPZFJ8I9KY6Nrw0G4bUBF/foaIj0tBH43D0c15oPGDQmt2P
 N7YIRtpHVDRlaTCRKwpt7+uD4XD3/XLEZ917zxlB+3LM8F0CQAdcbLun9kmIg39/Pix17L7rc
 qIkeC0gw8Y+3fQT6tUESYu9k5lP1vIo3kmUMDox75ubkBPIr2OLBhgpVDIzsB5Iw6nigOqsSs
 VteFaClnw9XKo4+9h24W27Y9yFTXM9lrb0hWh6vaxy21/+DfmvwkhVL+HkNrGBKsK6clFI+Lm
 XkX7cnsKvjaEDcy2I1BD9Og/pPiFbxFGR/Tkg970/FWTDgaj4YVz8RcSEFWE/VQZ6vXFwwi5n
 EowXr0xODdaZwU8J9kRK027dv20vpVtuTLezeibud2qB0Eg7LyRlGoDXVS0U2FICAud6U5lw4
 DJFuvoPycYkVjFz7i/f9vFPE1mWO38gNK+dL7XT5cGJWYqt58afW/Fre4hI4QBXrW7vWSz7Va
 zSEt9NeK6M8YgIZa0Gf4OPxtZrYHOu+AMU71tCjYE0cn9U4c7ocEeY6WrEeFV6fBc+D82fBJi
 Tg5om8Hd+5THOwSJuZhOXyDjFpvVEjp/XxPQxqnavgBj8xiiv7V5uYxgyCQep2G84itcocp5g
 NJm9O2mOyEd056WC2v3yKPVhVhJ/A99ASz9GM7cwBHWVv71lTB24g9XN3MnohVrDkAkORdQg5
 QMd+UD9qiTJSQWml7Ea15wcxPH8yL7AF+/kuL4QOeIIH6km+DnBpa9MGmfYBDGsVzXFjRXcu1
 SZ356UEqEhidlsCtz1QYxr2ep9smg+4DWa8Ai0gwTYchPv0Yws3EM+YMylr+DhZP8ryZkmtA3
 aSjgVfn6x5jtRzFkQqFQ==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (doark[at]mail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [74.208.4.201 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kkBxC-00Ecqc-Na
Subject: Re: [Jfs-discussion] MB <-> HDD incompatibility. Crash. I/O error.
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

On Tue, 1 Dec 2020 10:19:49 -0600
Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
> On 11/30/20 10:01 PM, David Niklas wrote:
> > Hi,
> > I've been trouble shooting HDDs to MB communication errors for over a
> > week now and I found out that one of my HDDs doesn't like to talk to
> > my MBs SATA port. The MB is a ASRock B550 TAICHI. It's port is backed
> > by the ASMedia ASM1061. The exact errors were READ and WRITE FPDMA
> > QUEUED. I've found a solution in swapping the HDD SATA cables around
> > to get a working solution.
> >
> > Of course, this seems that it wouldn't involve JFS, but I wanted to
> > explain exactly what my situation is.
> >
> > During my experiments trying to find what was causing the problems I
> > accidentally disconnected some of my drives. They are in RAID6/60. On
> > top of that RAID6/60 array is JFS.
> >
> > Ever since that time, I've gotten constant "metapage_read_end_io: I/O
> > error" messages from my kernel. I can't fsck the FS.
> > I have a backup and I want to bring it up-to-date with the current
> > state of the FS. The problem is that I keep getting those errors.
> > I diff'ed one of the dirs and dar says that everything is there and
> > intact, but I got a lot of those errors.
> >
> > I need to know, do they mean?
> > What is a metapage?
>
> A metapage is just a page of metadata, which could be a lot of things.
> Anything but file data.
>
> > Is it a temporary failure? Is it a permanent "can't access this
> > sector" error?
>
> All the metadata is managed in 4kb pages, so it appears that it is
> failing to read page of metadata. Unfortunately, the error message
> doesn't tell you what it is trying to read or where. If there is some
> kind of filesystem corruption, it could be trying to read something
> invalid.
>
> Mounting the volume read-only should result in a little less i/o and
> can prevent any further damage to the file system (if there is any),
> but I doubt it makes the problem go away.
>
> Or you could try reading the raw partition to see if you get i/o errors
> with jfs out of the picture. "dd if=/dev/... of=/dev/null" or something.
>
> Shaggy
>

Hi Shaggy,
Thanks for the explanation. I really appreciate it.

I did and am mounting the FS RO. I tried using dd on the device
file, /dev/md7p1. It reports an I/O error after 74kB (Case sensitivity
preserved). Trying to use skip doesn't work well either.
I tried failing each drive/device of the array individually, to find the
defective one without success.
I resync'ed the array and checked it using mdadm and they both agree that
all is well.

Thanks,
David


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
