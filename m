Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMrfGhsIp2k7bgAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Tue, 03 Mar 2026 17:11:07 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A57C1F35D6
	for <lists+jfs-discussion@lfdr.de>; Tue, 03 Mar 2026 17:11:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M6/mcJ0EjbUohLEut6FB43A/+xvh/G0UZ7YmxRlh7KE=; b=dp/g3S0PckRarqWwh59sxugV5s
	giO0jlJpSPfbueYDkxiCyKk0tiqUApP7EymYz7CtTIIS7vfZ9OQUDglcg9A3AX/Qgepx4demJeD02
	xy15KYv1WDaM+4vCVwaARJG7cPaiUQpAQakwN0RI8/5I6eWfeb/qbx6UcJ80GG2Lysr0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vxSKH-0006Jy-Oi;
	Tue, 03 Mar 2026 16:10:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <paul@paul-moore.com>) id 1vxSKG-0006Ji-Lx
 for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Mar 2026 16:10:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HCKOB8v5PMk665Bqff0+UwFdzmHKS9yVAUuIB18V7V4=; b=gvxcUirHm25RdTrLllBlxfS25N
 Rq53TJQ4VDDO63lAhLLRQ+x0Iz++t9MU23JVHaXh/7/GPgqiioX0zaVVgKidpb7mo22NS9/SEunnm
 vbdM9Vquw53qG90LypH+uEENmKnfruV9lWz3KpiNR6g9Q7Kr4GvE/2aB+F7BmunYWPws=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HCKOB8v5PMk665Bqff0+UwFdzmHKS9yVAUuIB18V7V4=; b=fWKjCglhwtrXzgZc/RwrY2nETK
 HWeTGZxuuIrLRxIbMxr9ntQ3cwv2AnUo4EKfxdJSgg/F18f+2TkBvycoP0pWKtzOpkSTF9XKf3X1l
 qI6tjC7PS7Sw6JibovmNz6wxTs2YUWwnFsFCy5wjIQKqQReLePy9xyTIxyaI9Pwnl7GI=;
Received: from mail-oa1-f45.google.com ([209.85.160.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vxSKH-0001Sq-1H for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Mar 2026 16:10:25 +0000
Received: by mail-oa1-f45.google.com with SMTP id
 586e51a60fabf-40f0e14b9f9so635304fac.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 03 Mar 2026 08:10:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772554214; cv=none;
 d=google.com; s=arc-20240605;
 b=X5Mx5Z3vR42Rfci5FPcttJbpnXB/RsR04rFjutN+cmKwSZk//5wy6Z8dBVvnWVyzAM
 oetAM1CUDPD4grcTN1bWOcPULz/MWAVwMFUmOJtuAq80/mU644nZx02vrptPyBEDMdhE
 +D4vf3EaNEnkXw7pgMCYT+cu2KW0opIJNNrpSwNLm6dzaRCQGeF4LlyZ2fzO2PuhsUiQ
 /hZK3LrjiW+Th6yOZbojDHyhZN2UiTEwtW5T8c09Urpjr0bxYS0n8wttA0aSZK4Tli6f
 SkSdaSxs/V5Dt0lxd2JgPtc7m/LMZVvJE8nGLq4LiwkYCIM3qUhLRUw3AtBItWC14VLt
 G5qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=HCKOB8v5PMk665Bqff0+UwFdzmHKS9yVAUuIB18V7V4=;
 fh=wVlxQ3GOvDW28UG8P9DBPxdQBhn5nKWF7IheGeYrMVE=;
 b=OEKK5opuA/49ZibN0zhYwxF2/iyCQseu7/7O8LYQtcbAkzj8KSnbYIfSJoZXPPkFku
 chomhOxFU5Uo0vLIXXfVFpx77JKjkN5XM3+nUBrWVli4FPxQgaCy++bvbQ8UX1FFT2Um
 j0mij36yVjBmYoOnW8En5cP1rV+9tp0RSV96+eBVtwAOs5HdicWRVtM2V3CW9yeQbAGF
 UtY2ecaWWihfwIlrHWC+98iJAmPV7M17BLTlUJXOEsPN3nVj+pQ812Dhi8c88TcCiWtI
 3fUGAjliNnHo8V8nAWqW3q+bnlBpGytWO3lDz79Yq+NxCzfodJqgjFga/PauHCm6rMv1
 sW9Q==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore.com; s=google; t=1772554214; x=1773159014;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HCKOB8v5PMk665Bqff0+UwFdzmHKS9yVAUuIB18V7V4=;
 b=XK/KqH+Q0Rn+gxXRzl4vbDKxl9mjN4IfRwwL93+H6NoR5XkzQshBLpfzsiYSfxLE7O
 uWxUk7HzMHTl3j/htRGMtPQGqE5ujQ6aJKvtAhS9U+R6fG8lvX4GJmJqHvGX6dUTYr41
 OEpf/qQ8hkAwPWc1ykh4hkgQT1hAXUULmrIfm576hLraKcMv2gX3QYe05XbUwK48HlO5
 W5wZoZlKN7xR2zss7gKwYOUEMp6u+OuH6Ms7zsRpWhQZVyN25/GjEErgPXbpG+8DGwem
 bAZDOkxYpsAucIF2YWSv9s11cG9mOt2aDdrGIb7uvAcyEQhema/iAWqotMUo8wk8y1Qu
 zZzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772554214; x=1773159014;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=HCKOB8v5PMk665Bqff0+UwFdzmHKS9yVAUuIB18V7V4=;
 b=pD/Kn9Q7+O1/jLRoRHCuQPbD0XoSgu2Fri76p/99qadrNo7zvPqNzYYmzFpVLPrS0M
 RbOzr6Z26giT5yeqvmKHm293AxhmyT0lQRln6h+FwcKXGScrQ/L5208b3gbm+HTc9Pb6
 nEXHRC06Yjdhq9mwo32Ra+WEG//zU8BYDHOtvQFr+bxwXBDYY2+v6IHDQyQTxain2PVG
 inLPFt4wDqwvcScdJxjQi+DA9EBr+bRIYgQf/YPLBFdDQfyJtNbtYV2/PHqNRg+p4fHV
 DDDTk6iRUrdmsu+Ns7ty/wm5H5QJ7arYk+/MVpfqUY1Gwt9ViGCSR6d/feOPPBD7FS+f
 L4xg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXc6hz0vNsJ+m9uuvu7bF3chQN7lTmC6ZY/eAKDSVOF9Y2j5Ni8/bC9Fpk+JfTzxpb+2/ozcgn7XQynup3fHQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Ywv+hftmNRQieu/UHoOqT5A0fldyssfdff0+VApsEuBHT2BJIcg
 tq18yD7HiXkljenDdsIDdnZJMeYXYn3jh+ICRRvtIqqNhcevMgimN6O2eQzEz/yjAkKNdnIk8rn
 9omXQUxUc23qUFBTtLOPwqFMD+6hxlXswGHQm3RNhE999xGYCNJ+YlA==
X-Gm-Gg: ATEYQzxjvRpAlVjo0nIrpfF3elxLk2Ac/PWYRN+9dq4lF5F4wO8j9oCrZkHclxQysgg
 lRSDxNh0SU7w+JJICwNMI08PqI2d4HxNvFE5g6OyqdrSjLRkUkMgIN1EfE17KLVmlcC5GAD1vvP
 XjS++e9I+nQWKmn+Dg7YAziokor4vb9fd8GLmf8S6WjiXp15a8oz2oWAB9RIsIRdq6dpmtSrd8b
 qeffdcDx6a7XpIl5gocnWl791DXVRxAdgxFcJoUlcpFqwtNP62cy8qZTDPtgjhM+hL1UEfHgg4v
 6kSPH+I=
X-Received: by 2002:a17:902:f60d:b0:2ae:6457:30b4 with SMTP id
 d9443c01a7336-2ae645735cdmr15498765ad.36.1772553812817; Tue, 03 Mar 2026
 08:03:32 -0800 (PST)
MIME-Version: 1.0
References: <20260302-iino-u64-v2-0-e5388800dae0@kernel.org>
 <20260302-iino-u64-v2-3-e5388800dae0@kernel.org>
 <CAHC9VhRnmBuXEKkUPQhJ_LDzcksjoAJL-ne6mFoJdR1hnDdzsg@mail.gmail.com>
 <7a0165fe39e82a1effd8cce5c2c4e82d6a42cb3a.camel@kernel.org>
In-Reply-To: <7a0165fe39e82a1effd8cce5c2c4e82d6a42cb3a.camel@kernel.org>
Date: Tue, 3 Mar 2026 11:03:20 -0500
X-Gm-Features: AaiRm51FwCY5Sd0470l_ykVC0rIb7qnpGdc7B1bNvF1bAK1vXw1y1CZQ64VgwhQ
Message-ID: <CAHC9VhTyhnG7-ojnTnVdh_m1x=rKxw9YEH9g7Xp9m4F78aA5cA@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Mar 3,
 2026 at 6:05 AM Jeff Layton <jlayton@kernel.org>
 wrote: > On Mon, 2026-03-02 at 18:44 -0500, Paul Moore wrote: > > On Mon,
 Mar 2, 2026 at 3:25 PM Jeff Layton <jlayton@kernel.org> wrote: [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.45 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vxSKH-0001Sq-1H
Subject: Re: [Jfs-discussion] [PATCH v2 003/110] audit: widen ino fields to
 u64
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
From: Paul Moore via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Paul Moore <paul@paul-moore.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, nvdimm@lists.linux.dev,
 Paulo Alcantara <pc@manguebit.org>, "Darrick J. Wong" <djwong@kernel.org>,
 Anders Larsen <al@alarsen.net>, dri-devel@lists.freedesktop.org,
 linux-sctp@vger.kernel.org, linux-hams@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs@vger.kernel.org, Fan Wu <wufan@kernel.org>,
 Xin Long <lucien.xin@gmail.com>, ceph-devel@vger.kernel.org,
 James Morris <jmorris@namei.org>, Tyler Hicks <code@tyhicks.com>,
 Christoph Hellwig <hch@infradead.org>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Martin Schiller <ms@dev.tdt.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Jan Harkes <jaharkes@cs.cmu.edu>,
 Willem de Bruijn <willemb@google.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, linux-fscrypt@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
 David Hildenbrand <david@kernel.org>, Eric Van Hensbergen <ericvh@kernel.org>,
 Zhihao Cheng <chengzhihao1@huawei.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Christian Brauner <brauner@kernel.org>,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>,
 Stephen Smalley <stephen.smalley.work@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Paris <eparis@redhat.com>, linux-perf-users@vger.kernel.org,
 Chuck Lever <chuck.lever@oracle.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Jiri Olsa <jolsa@kernel.org>, Jan Kara <jack@suse.com>,
 Alex Deucher <alexander.deucher@amd.com>, linux-media@vger.kernel.org,
 Trond Myklebust <trondmy@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Dave Kleikamp <shaggy@kernel.org>, Mimi Zohar <zohar@linux.ibm.com>,
 Oleg Nesterov <oleg@redhat.com>, Eric Dumazet <edumazet@google.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 linux-cifs@vger.kernel.org, Kuniyuki Iwashima <kuniyu@google.com>,
 linux-nilfs@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 codalist@coda.cs.cmu.edu, Remi Denis-Courmont <courmisch@gmail.com>,
 linux-trace-kernel@vger.kernel.org, Olga Kornievskaia <okorniev@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Yangtao Li <frank.li@vivo.com>, selinux@vger.kernel.org, v9fs@lists.linux.dev,
 linux-can@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Casey Schaufler <casey@schaufler-ca.com>, netfs@lists.linux.dev,
 Jaegeuk Kim <jaegeuk@kernel.org>, fsverity@lists.linux.dev,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Nicolas Pitre <nico@fluxnic.net>,
 Muchun Song <muchun.song@linux.dev>, Roberto Sassu <roberto.sassu@huawei.com>,
 "David S. Miller" <davem@davemloft.net>, Anna Schumaker <anna@kernel.org>,
 linux-integrity@vger.kernel.org,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
 Alex Markuze <amarkuze@redhat.com>, Martin Brandenburg <martin@omnibond.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 ocfs2-devel@lists.linux.dev, Alexei Starovoitov <ast@kernel.org>,
 linux-mtd@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 Marc Dionne <marc.dionne@auristor.com>, Neal Cardwell <ncardwell@google.com>,
 linux-afs@lists.infradead.org, Ian Kent <raven@themaw.net>,
 Naohiro Aota <naohiro.aota@wdc.com>, Eric Biggers <ebiggers@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Miklos Szeredi <miklos@szeredi.hu>,
 Matthew Wilcox <willy@infradead.org>, coda@cs.cmu.edu,
 Stanislav Fomichev <sdf@fomichev.me>, NeilBrown <neil@brown.name>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 jfs-discussion@lists.sourceforge.net, "Serge E. Hallyn" <serge@hallyn.com>,
 Amir Goldstein <amir73il@gmail.com>, James Clark <james.clark@linaro.org>,
 autofs@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Damien Le Moal <dlemoal@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-nfs@vger.kernel.org, linux-ext4@vger.kernel.org, linux-mm@kvack.org,
 samba-technical@lists.samba.org, Ondrej Mosnacek <omosnace@redhat.com>,
 Steve French <sfrench@samba.org>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org, ntfs3@lists.linux.dev,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Ian Rogers <irogers@google.com>, Alexander Aring <alex.aring@gmail.com>,
 Jan Kara <jack@suse.cz>, Peter Zijlstra <peterz@infradead.org>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, ecryptfs@vger.kernel.org,
 linux-unionfs@vger.kernel.org, David Howells <dhowells@redhat.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 linux-f2fs-devel@lists.sourceforge.net, David Airlie <airlied@gmail.com>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Eric Snowberg <eric.snowberg@oracle.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-x25@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Mark Fasheh <mark@fasheh.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 Ingo Molnar <mingo@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Salah Triki <salah.triki@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 Joerg Reuter <jreuter@yaina.de>, Simon Horman <horms@kernel.org>,
 Chao Yu <chao@kernel.org>, apparmor@lists.ubuntu.com,
 Tom Talpey <tom@talpey.com>, Bharath SM <bharathsm@microsoft.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 David Sterba <dsterba@suse.com>, Namhyung Kim <namhyung@kernel.org>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 John Johansen <john.johansen@canonical.com>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Oliver Hartkopp <socketcan@hartkopp.net>, David Ahern <dsahern@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, audit@vger.kernel.org,
 linux-security-module@vger.kernel.org, Johannes Thumshirn <jth@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 7A57C1F35D6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jlayton@kernel.org,m:lucho@ionkov.net,m:nvdimm@lists.linux.dev,m:pc@manguebit.org,m:djwong@kernel.org,m:al@alarsen.net,m:dri-devel@lists.freedesktop.org,m:linux-sctp@vger.kernel.org,m:linux-hams@vger.kernel.org,m:sumit.semwal@linaro.org,m:hubcap@omnibond.com,m:linux-xfs@vger.kernel.org,m:wufan@kernel.org,m:lucien.xin@gmail.com,m:ceph-devel@vger.kernel.org,m:jmorris@namei.org,m:code@tyhicks.com,m:hch@infradead.org,m:devel@lists.orangefs.org,m:sprasad@microsoft.com,m:ms@dev.tdt.de,m:hawk@kernel.org,m:jaharkes@cs.cmu.edu,m:willemb@google.com,m:acme@kernel.org,m:linux-fscrypt@vger.kernel.org,m:viro@zeniv.linux.org.uk,m:ronniesahlberg@gmail.com,m:glaubitz@physik.fu-berlin.de,m:david@kernel.org,m:ericvh@kernel.org,m:chengzhihao1@huawei.com,m:magnus.karlsson@intel.com,m:brauner@kernel.org,m:dmitry.kasatkin@gmail.com,m:stephen.smalley.work@gmail.com,m:linux-kernel@vger.kernel.org,m:eparis@redhat.com,m:linux-perf-users@vger.kernel.org,m:chuck.lever@oracle.com,m:mhir
 amat@kernel.org,m:jolsa@kernel.org,m:jack@suse.com,m:alexander.deucher@amd.com,m:linux-media@vger.kernel.org,m:trondmy@kernel.org,m:mark.rutland@arm.com,m:shaggy@kernel.org,m:zohar@linux.ibm.com,m:oleg@redhat.com,m:edumazet@google.com,m:johan.hedberg@gmail.com,m:simona@ffwll.ch,m:linux-cifs@vger.kernel.org,m:kuniyu@google.com,m:linux-nilfs@vger.kernel.org,m:john.fastabend@gmail.com,m:codalist@coda.cs.cmu.edu,m:courmisch@gmail.com,m:linux-trace-kernel@vger.kernel.org,m:okorniev@redhat.com,m:maciej.fijalkowski@intel.com,m:frank.li@vivo.com,m:selinux@vger.kernel.org,m:v9fs@lists.linux.dev,m:linux-can@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:casey@schaufler-ca.com,m:netfs@lists.linux.dev,m:jaegeuk@kernel.org,m:fsverity@lists.linux.dev,m:tytso@mit.edu,m:nico@fluxnic.net,m:muchun.song@linux.dev,m:roberto.sassu@huawei.com,m:davem@davemloft.net,m:anna@kernel.org,m:linux-integrity@vger.kernel.org,m:marcelo.leitner@gmail.com,m:luiz.dentz@gmail.com,m:amarkuze@redhat.com,m:martin@omni
 bond.com,m:alexander.shishkin@linux.intel.com,m:ocfs2-devel@lists.linux.dev,m:ast@kernel.org,m:linux-mtd@lists.infradead.org,m:amd-gfx@lists.freedesktop.org,m:marc.dionne@auristor.com,m:ncardwell@google.com,m:linux-afs@lists.infradead.org,m:raven@themaw.net,m:naohiro.aota@wdc.com,m:ebiggers@kernel.org,m:daniel@iogearbox.net,m:miklos@szeredi.hu,m:willy@infradead.org,m:coda@cs.cmu.edu,m:sdf@fomichev.me,m:neil@brown.name,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,paul-moore.com:s=google];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	RCPT_COUNT_GT_50(0.00)[170];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[ionkov.net,lists.linux.dev,manguebit.org,kernel.org,alarsen.net,lists.freedesktop.org,vger.kernel.org,linaro.org,omnibond.com,gmail.com,namei.org,tyhicks.com,infradead.org,lists.orangefs.org,microsoft.com,dev.tdt.de,cs.cmu.edu,google.com,zeniv.linux.org.uk,physik.fu-berlin.de,huawei.com,intel.com,redhat.com,oracle.com,suse.com,amd.com,arm.com,linux.ibm.com,ffwll.ch,coda.cs.cmu.edu,vivo.com,lists.linaro.org,schaufler-ca.com,mit.edu,fluxnic.net,linux.dev,davemloft.net,linux.intel.com,lists.infradead.org,auristor.com,themaw.net,wdc.com,iogearbox.net,szeredi.hu,fomichev.me,brown.name,lists.sourceforge.net,hallyn.com,goodmis.org,efficios.com,suse.de,paragon-software.com,kvack.org,lists.samba.org,samba.org,suse.cz,codewreck.org,crudebyte.com,linux.alibaba.com,dilger.ca,artax.karlin.mff.cuni.cz,secunet.com,gondor.apana.org.au,nod.at,fasheh.com,holtmann.org,yaina.de,lists.ubuntu.com,talpey.com,pengutronix.de,canonical.com,hartkopp.net,evilplan.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[paul@paul-moore.com];
	TAGGED_RCPT(0.00)[jfs-discussion];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,paul-moore.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,paul-moore.com:replyto,paul-moore.com:url]
X-Rspamd-Action: no action

T24gVHVlLCBNYXIgMywgMjAyNiBhdCA2OjA14oCvQU0gSmVmZiBMYXl0b24gPGpsYXl0b25Aa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4gT24gTW9uLCAyMDI2LTAzLTAyIGF0IDE4OjQ0IC0wNTAwLCBQYXVs
IE1vb3JlIHdyb3RlOgo+ID4gT24gTW9uLCBNYXIgMiwgMjAyNiBhdCAzOjI14oCvUE0gSmVmZiBM
YXl0b24gPGpsYXl0b25Aa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+IGlub2RlLT5pX2lu
byBpcyBiZWluZyB3aWRlbmVkIGZyb20gdW5zaWduZWQgbG9uZyB0byB1NjQuIFRoZSBhdWRpdAo+
ID4gPiBzdWJzeXN0ZW0gdXNlcyB1bnNpZ25lZCBsb25nIGlubyBpbiBzdHJ1Y3QgZmllbGRzLCBm
dW5jdGlvbiBwYXJhbWV0ZXJzLAo+ID4gPiBhbmQgbG9jYWwgdmFyaWFibGVzIHRoYXQgc3RvcmUg
aW5vZGUgbnVtYmVycyBmcm9tIGFyYml0cmFyeSBmaWxlc3lzdGVtcy4KPiA+ID4gT24gMzItYml0
IHBsYXRmb3JtcyB0aGlzIHRydW5jYXRlcyBpbm9kZSBudW1iZXJzIHRoYXQgZXhjZWVkIDMyIGJp
dHMsCj4gPiA+IHdoaWNoIHdpbGwgY2F1c2UgaW5jb3JyZWN0IGF1ZGl0IGxvZyBlbnRyaWVzIGFu
ZCBicm9rZW4gd2F0Y2gvbWFyawo+ID4gPiBjb21wYXJpc29ucy4KPiA+ID4KPiA+ID4gV2lkZW4g
YWxsIGF1ZGl0IGlubyBmaWVsZHMsIHBhcmFtZXRlcnMsIGFuZCBsb2NhbHMgdG8gdTY0LCBhbmQg
dXBkYXRlCj4gPiA+IHRoZSBpbm9kZSBmb3JtYXQgc3RyaW5nIGZyb20gJWx1IHRvICVsbHUgdG8g
bWF0Y2guCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEplZmYgTGF5dG9uIDxqbGF5dG9uQGtl
cm5lbC5vcmc+Cj4gPiA+IC0tLQo+ID4gPiAgaW5jbHVkZS9saW51eC9hdWRpdC5oICAgfCAyICst
Cj4gPiA+ICBrZXJuZWwvYXVkaXQuaCAgICAgICAgICB8IDkgKysrKy0tLS0tCj4gPiA+ICBrZXJu
ZWwvYXVkaXRfZnNub3RpZnkuYyB8IDQgKystLQo+ID4gPiAga2VybmVsL2F1ZGl0X3dhdGNoLmMg
ICAgfCA4ICsrKystLS0tCj4gPiA+ICBrZXJuZWwvYXVkaXRzYy5jICAgICAgICB8IDIgKy0KPiA+
ID4gIDUgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCj4g
Pgo+ID4gV2Ugc2hvdWxkIGFsc28gdXBkYXRlIGF1ZGl0X2hhc2hfaW5vKCkgaW4ga2VybmVsL2F1
ZGl0LmguICBJdCBpcyBhCj4gPiAqdmVyeSogYmFzaWMgaGFzaCBmdW5jdGlvbiwgc28gSSB0aGlu
ayBsZWF2aW5nIHRoZSBmdW5jdGlvbiBhcy1pcyBhbmQKPiA+IGp1c3QgY2hhbmdpbmcgdGhlIGlu
b2RlIHBhcmFtZXRlciBmcm9tIHUzMiB0byB1NjQgc2hvdWxkIGJlIGZpbmUuCgouLi4KCj4gSXQg
ZG9lc24ndCBsb29rIGxpa2UgY2hhbmdpbmcgdGhlIGFyZ3VtZW50IHR5cGUgd2lsbCBtYWtlIGFu
eSBtYXRlcmlhbAo+IGRpZmZlcmVuY2UuIEdpdmVuIHRoYXQgaXQgc2hvdWxkIHN0aWxsIHdvcmsg
d2l0aG91dCB0aGF0IGNoYW5nZSwgY2FuIHdlCj4gbGVhdmUgdGhpcyBjbGVhbnVwIGZvciB5b3Ug
dG8gZG8gaW4gYSBmb2xsb3ctb24gcGF0Y2hzZXQ/CgpJIHdvdWxkIHByZWZlciBpZiB5b3UgbWFk
ZSB0aGUgY2hhbmdlIGFzIHBhcnQgb2YgdGhlIHBhdGNoLCBtYWlubHkgdG8Ka2VlcCBhIHBhdGNo
IHJlY29yZCBvZiB0aGlzIGJlaW5nIHJlbGF0ZWQuCgpJZGVhbGx5IEknZCByZWFsbHkgbGlrZSB0
byBzZWUga2lub190IHVzZWQgaW4gdGhlIGF1ZGl0IGNvZGUgaW5zdGVhZApvZiB1NjQsIGJ1dCBw
ZXJoYXBzIHRoYXQgaXMgZG9uZSBpbiBhIGxhdGVyIHBhdGNoIHRoYXQgSSBkaWRuJ3Qgc2VlLgoK
LS0gCnBhdWwtbW9vcmUuY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
