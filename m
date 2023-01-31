Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F89682C5B
	for <lists+jfs-discussion@lfdr.de>; Tue, 31 Jan 2023 13:15:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pMpXB-0006el-Fc;
	Tue, 31 Jan 2023 12:14:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1pMpXA-0006ea-HE
 for jfs-discussion@lists.sourceforge.net;
 Tue, 31 Jan 2023 12:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7CV3uj2kDSVI4fanE/KCToyJxqPWzb+HHyIaNLOcff0=; b=NXIOC3u2y7lPEj3Qr4UMfOIF55
 u5DBI/PiY/73UGFslhALZn/ya1BwsDzfROQp1TDzM6azzncGJ+vStyMNnp4XhMZTSqM0qiVv8VYiC
 egEwlQEUNU3YJjHPxf+8zZ4jq8CIkJgxjdBvKpXShTh5BgiouzIqx1ob8NjqAPdckMjc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7CV3uj2kDSVI4fanE/KCToyJxqPWzb+HHyIaNLOcff0=; b=MsbWkmdaQImds3wQkCGMRTcHh6
 +r6DH6Y2ojZaTT9vpA3M5U9Cq/37Iuzeve9djmcGucLlM3wLNN4EKa+amUpdardHeyxDuszYRtkvg
 MrZJ+WYJX5Z1UX7tKDZCEwzOsHmByQ9O+POW6v0bONPcRPWG2n0HKlAhaubsdmd2IYFo=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pMpX4-0006LC-Hz for jfs-discussion@lists.sourceforge.net;
 Tue, 31 Jan 2023 12:14:43 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 33B42225E1;
 Tue, 31 Jan 2023 12:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1675167264; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7CV3uj2kDSVI4fanE/KCToyJxqPWzb+HHyIaNLOcff0=;
 b=hS3vFGOeOYOeHEzN8r1tg06sON5BlQiZf6cvQxRs2ksL6eevMAofKAsR11sNKSFP9V0Jjb
 Tb6kZ/Ab2PExoc3kOLr4r8GxQDK0O2msKB5u2ypju6totpu9q/Kaxun4/UTzHDMybRdSLA
 g7h3tyn7LbK2YTwBtf6UPE11VQVNIQQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1675167264;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7CV3uj2kDSVI4fanE/KCToyJxqPWzb+HHyIaNLOcff0=;
 b=ilMt3zUfeFK7nbjagjX2p8Y3AtRLyZwBL0tWTYLajp9z/H9os7AxwK5BUbghz8f52sbudZ
 GvzUS4shzykNL9Bg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 20C0C138E8;
 Tue, 31 Jan 2023 12:14:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id uQTpByAG2WMeBQAAMHmgww
 (envelope-from <jack@suse.cz>); Tue, 31 Jan 2023 12:14:24 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 361E8A06D5; Tue, 31 Jan 2023 13:14:23 +0100 (CET)
Date: Tue, 31 Jan 2023 13:14:23 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+707bba7f823c7b02fa43@syzkaller.appspotmail.com>
Message-ID: <20230131121423.pqfogvntzouymzmv@quack3>
References: <0000000000006b2ca005f38c7aeb@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0000000000006b2ca005f38c7aeb@google.com>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 31-01-23 02:05:58, syzbot wrote: > Hello, > > syzbot
 found the following issue on: > > HEAD commit: e2f86c02fdc9 Add linux-next
 specific files for 20230127 > git tree: linux-next > console outp [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
X-Headers-End: 1pMpX4-0006LC-Hz
Subject: Re: [Jfs-discussion] [syzbot] [hfsplus?] [udf?] [fat?] [jfs?]
 [vfs?] [hfs?] [exfat?] [ntfs3?] WARNING in __mpage_writepage
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
Cc: shaggy@kernel.org, brauner@kernel.org, sj1557.seo@samsung.com,
 dchinner@redhat.com, syzkaller-bugs@googlegroups.com,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org,
 linux-kernel@vger.kernel.org, almaz.alexandrovich@paragon-software.com,
 jack@suse.com, linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 linkinjeon@kernel.org, hirofumi@mail.parknet.co.jp
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue 31-01-23 02:05:58, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    e2f86c02fdc9 Add linux-next specific files for 20230127
> git tree:       linux-next
> console output: https://syzkaller.appspot.com/x/log.txt?x=156b2101480000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=920c61956db733da
> dashboard link: https://syzkaller.appspot.com/bug?extid=707bba7f823c7b02fa43
> compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=118429cd480000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12ccb1c1480000
> 
> Downloadable assets:
> disk image: https://storage.googleapis.com/syzbot-assets/ff04f1611fad/disk-e2f86c02.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/67928a8622d3/vmlinux-e2f86c02.xz
> kernel image: https://storage.googleapis.com/syzbot-assets/b444a3d78556/bzImage-e2f86c02.xz
> mounted in repro: https://storage.googleapis.com/syzbot-assets/99c5e7532847/mount_0.gz
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+707bba7f823c7b02fa43@syzkaller.appspotmail.com
> 
> ------------[ cut here ]------------
> WARNING: CPU: 1 PID: 5085 at fs/mpage.c:570 __mpage_writepage+0x138b/0x16f0 fs/mpage.c:570

This is the warning Willy has added as part of "mpage: convert
__mpage_writepage() to use a folio more fully" and that warning can indeed
easily trigger. There's nothing that serializes writeback against racing
truncate setting new i_size so it is perfectly normal to see pages beyond
EOF in this place. And the traditional response to such pages is "silently
do nothing" since they will be soon discarded by truncate_inode_pages().

								Honza

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
