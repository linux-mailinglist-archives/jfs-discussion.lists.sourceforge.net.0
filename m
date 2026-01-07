Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82242CFE799
	for <lists+jfs-discussion@lfdr.de>; Wed, 07 Jan 2026 16:07:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=4m7Y66QNBlmPzNBMgysaR8bzM0zU/g4fkV+te1fe8cw=; b=LT5V7XDTP1dylSarJTupqaZ6DP
	xQzgNlAbpkAK4GThqxBQjiqoqlK8AQQ8jLA+/+tkI9lumBtWuMxkTQ//gbHiHNfEJP6cuaLWa+Uo6
	PJlc0F/ySbQILSWlzOXxu0Tf3FGyjtSKirULnwGCFjKR8F7nGYIoJQOx8z5F9FzBCLFI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vdV7e-0001oq-BV;
	Wed, 07 Jan 2026 15:06:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3PnReaQkbAPElrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vdUyG-0000yD-KQ for jfs-discussion@lists.sourceforge.net;
 Wed, 07 Jan 2026 14:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DXNc8aW1tUrl2KVWvVMCKXzy2pWDkUQN3ZlLOLhLBCc=; b=QSfqvMRGURi/fHuxXKMxXVm0We
 vXlsWq1/hOcesBdPrm3BzPlg/zPsO5VmWS8VNCz6O7Kd9Mw9+lzusFOZuQ/0zl4alx1RZqHnIQ+Ac
 qqp5fg3K4iPA6C+tVsJLJbqx8++AIC2QqkjOeMIR4949zHEYFsP3KYETl5kV+lG/nWh4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DXNc8aW1tUrl2KVWvVMCKXzy2pWDkUQN3ZlLOLhLBCc=; b=Z
 7C38PzaUkSE16VA9PTbb3mycvPyObEDO+1eQFqU+gSXZCC2I4H4nw6G1kW275MNUb5h9pk38J8UxU
 K/DTI2tTKsuLuQ9Ncdeyzs3TS6ovcqjHqNvBukcAr8gcq6O/3WyDBIPPB8SuOGF0kvIBgpkFLt7tj
 HYMUgt0hOq/oI+WM=;
Received: from mail-oo1-f70.google.com ([209.85.161.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vdUyG-0004Y8-Un for jfs-discussion@lists.sourceforge.net;
 Wed, 07 Jan 2026 14:57:13 +0000
Received: by mail-oo1-f70.google.com with SMTP id
 006d021491bc7-65e902a9ce8so1848178eaf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 07 Jan 2026 06:57:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767797822; x=1768402622;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=DXNc8aW1tUrl2KVWvVMCKXzy2pWDkUQN3ZlLOLhLBCc=;
 b=N7I4DnaJMTQSCNvnrjjPvuvonj/Pm57A9DlmeMS8ynMBWghYrAc8w4vQIGZDIDYYAI
 YbByAZfjlfNNcoZwzVO/I6Tjg5LOdBrMKXsdJJGFLdw4BWhhQkuqTBsJmSs3GBDuDT00
 TEhG87vIhVB+Xwp/x7ipImagvcVpMl1XJFfdDJGGrT171Szdto43iKIqT/nb6O0sxpne
 KnxQqQNaAD6/TNw92hly2hSHyG/l8F3eQJA2mKKj+Ae5lIa1phdiOqmaBPrTYp2UuMSq
 FyYRwffjAYqFHdACLt3J35TRSsLKb+W/c1rnE0Ox6oIaM3jiXzqbs8I2PjX/n6xFqxSN
 /LjQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQ+h2eC4QCS+wi95RPhOGTiW57lFkylyoTyL51JVnQvVID0020ipOdSUV4zMC+173HQy/M+0WeRyOf8aTZIw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxs4rZY0Zgr1QzNvYrvXRQQLdQJHMKtpMgnrWdeyM9sdVEqkDV7
 OsNAyDfZ9hQWWsvGmWv7Ty5v7+ZUEQUKEoiAzKlSzx7aDReJCUId2GqTAgrdM2WZwenz76ZgI9p
 +6FZSRsgdzLmWWMA/Wm0AqXlNd6ZvmhGZyJbMmLlgBuBpTu6FGaLELxxlx34=
X-Google-Smtp-Source: AGHT+IElJnP+xwf4y87F+g1APsfo9Vm5XUE2Vz3REcJdKkSBdJEVRIWSK9+TuDGDMpgS40AebeY0wbBGqfnJ7zPVZ46RH2I7QTk+
MIME-Version: 1.0
X-Received: by 2002:a4a:b5cc:0:b0:65c:f22f:30a8 with SMTP id
 006d021491bc7-65f4826c517mr2537368eaf.20.1767797822402; Wed, 07 Jan 2026
 06:57:02 -0800 (PST)
Date: Wed, 07 Jan 2026 06:57:02 -0800
In-Reply-To: <00000000000051d14405fadad8cc@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <695e743e.050a0220.1c677c.036a.GAE@google.com>
To: brauner@kernel.org, dmantipov@yandex.ru, jack@suse.cz, 
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org, mjguzik@gmail.com, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot suspects this issue was fixed by commit: commit
 dca3aa666fbd71118905d88bb1c353881002b647
 Author: Mateusz Guzik <mjguzik@gmail.com> Date: Sun Nov 9 12:19:31 2025 +0000
 fs: move inode fields used during fast path lookup closer together 
 Content analysis details:   (2.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.70 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1vdUyG-0004Y8-Un
X-Mailman-Approved-At: Wed, 07 Jan 2026 15:06:54 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: user-memory-access
 Write in __destroy_inode
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
From: syzbot via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: syzbot <syzbot+dcc068159182a4c31ca3@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot suspects this issue was fixed by commit:

commit dca3aa666fbd71118905d88bb1c353881002b647
Author: Mateusz Guzik <mjguzik@gmail.com>
Date:   Sun Nov 9 12:19:31 2025 +0000

    fs: move inode fields used during fast path lookup closer together

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1480019a580000
start commit:   6146a0f1dfae Linux 6.18-rc4
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=e46b8a1c645465a9
dashboard link: https://syzkaller.appspot.com/bug?extid=dcc068159182a4c31ca3
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15ef4532580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=179c1e14580000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: move inode fields used during fast path lookup closer together

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
