Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C555995684
	for <lists+jfs-discussion@lfdr.de>; Tue,  8 Oct 2024 20:27:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1syEvK-0001as-Hu;
	Tue, 08 Oct 2024 18:27:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ancowi69@gmail.com>) id 1sx1hB-0001vg-0i
 for jfs-discussion@lists.sourceforge.net;
 Sat, 05 Oct 2024 10:07:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wgmZynwG71OocyO0thzm1PkveGyf/L6c+8DunhW8BTE=; b=hxNhktg+o7vLNUvThHbhHj0aKu
 e7NbsDj0Kdhdm6BS9W7y67uMKJKecG2U6EbWzF2kz3IV8VQ7/oAQuYipe55qLFI6J623QUdLwoFwK
 uHgQCOleRtZAIFemVHPMrzGp/1dZO+a2gJNQjYUPl3gdz7OFg5HPhkLYxO5TqnwAkDGc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wgmZynwG71OocyO0thzm1PkveGyf/L6c+8DunhW8BTE=; b=E
 Bs+ctdox59fvXUwiG5D3WTe1kVW37jyRBNxFl7aReDkH4Vm/TsqxWG3tirQr992BD7h1JX/+POr6C
 CGgy0ay2ANKCy+I/l31IyX0wX2WxE5tvFfS52xcodSaBRMQ0iOBeN9F7JyjzAZylBIsNOuzQTcnno
 P8xFqhE8mgEFCtdI=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sx1hB-0000oB-3T for jfs-discussion@lists.sourceforge.net;
 Sat, 05 Oct 2024 10:07:29 +0000
Received: by mail-lf1-f41.google.com with SMTP id
 2adb3069b0e04-53959a88668so3686731e87.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 05 Oct 2024 03:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728122837; x=1728727637; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=wgmZynwG71OocyO0thzm1PkveGyf/L6c+8DunhW8BTE=;
 b=T4PeaDgIqEymYsC43BJgCIzcRiFmwElKhsaXunuBFJRoZnSd65Sc5IHUqEVBdfDMUU
 H7YfU1xNdM48YS4K81bNkKg0eWdBQGH6Gx0PUBNGDYW8USEqmvHCQKLrn/lceFXUnXAf
 Pz2QQLHHmehhe/udp2jhYeBDkl2/5Fi/24EQzOLt7QHAgpxl5ZtjHRnrTo5pViXAdBu5
 UyOuuJHIBGGjlvzh8xMHLu6s4v9oQNl0Ehc76KjPMJsrdklMtEWiSaxAYwLnEetFZiux
 Yjo8cMdsdQ1Jk4i7lG1wd+nvZSOfZeDlnpsQOEp/wgcGnUyeBnk4JMOx0I3nvWgHLWtl
 Vpkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728122837; x=1728727637;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wgmZynwG71OocyO0thzm1PkveGyf/L6c+8DunhW8BTE=;
 b=H+UrxEVEjjlN42ecwiN/S/X81DdAEdboe96shzoA6lZwlrG0QAm4HOXvkwiDxTC9mg
 6HgSTOqwC1bKU0ItSyKbdd59QsjL99/HT3RjbCHfiAP1HNxQ330YcWqeKXD+D6tUv/gR
 ILmznBkYoEVnigx1hgnZ8jHGNrSMEgfoHQA1qCSDr6+4mnHrqIFfiYLBsd5V97qvbOuv
 Mt0lFgMK4mNiHtHGhLDBGA2dAXz6FAsWebyQ2+H4kazZ72zJQFVsuJDSKVaqoZoFavCf
 R4/UapmJBrpN1YNB5JR3Q97km5lFCnhyX3SgMPr9KedUmZA6NSxLDiqTsvFRZ3jPx7Xf
 davw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVI5ESbtA05xO8zmeoilAAlLqPq4UhrQOh2xQCEGKcOzfv2uwbHMvOiRhD0hS0Z4mO7GdelGompsWNUUDgYRA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz6W1ef78Xo6AeXJzAJW43O6kZsrkOiabcA37kalw23rr0SJvXQ
 eVY1/txswjHwddj2GIodLhZc64yu/Wlz/eTrbUs5Qcwki5IjixY6
X-Google-Smtp-Source: AGHT+IGNYuQkErgECfD7RtrsNs0x0faBAPGYH1Yw0W5OTZRp9TC9znXQ0J+EMz4L/KmxiThpg7fNAw==
X-Received: by 2002:a05:6512:baa:b0:536:53fc:e8fc with SMTP id
 2adb3069b0e04-539ab877139mr3473922e87.16.1728122836676; 
 Sat, 05 Oct 2024 03:07:16 -0700 (PDT)
Received: from localhost.localdomain ([178.69.224.101])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-539afec1240sm186305e87.55.2024.10.05.03.07.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2024 03:07:16 -0700 (PDT)
To: Dave Kleikamp <shaggy@kernel.org>
Date: Sat,  5 Oct 2024 10:06:57 +0000
Message-ID: <20241005100658.2102-1-ancowi69@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Commit 7c55b78818cf ("jfs: xattr: fix buffer overflow for
 invalid xattr") also addresses this issue but it only fixes it for positive
 values, while ea_size is an integer type and can take negative val [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.41 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ancowi69[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ancowi69[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.41 listed in wl.mailspike.net]
X-Headers-End: 1sx1hB-0000oB-3T
X-Mailman-Approved-At: Tue, 08 Oct 2024 18:27:05 +0000
Subject: [Jfs-discussion] [PATCH] jfs: xattr: check invalid xattr size more
 strictly
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
From: Artem Sadovnikov via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Artem Sadovnikov <ancowi69@gmail.com>
Cc: Christian Brauner <brauner@kernel.org>, lvc-project@linuxtesting.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 jfs-discussion@lists.sourceforge.net, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Artem Sadovnikov <ancowi69@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Commit 7c55b78818cf ("jfs: xattr: fix buffer overflow for invalid xattr")
also addresses this issue but it only fixes it for positive values, while
ea_size is an integer type and can take negative values, e.g. in case of
a corrupted filesystem. This still breaks validation and would overflow
because of implicit conversion from int to size_t in print_hex_dump().

Fix this issue by clamping the ea_size value instead.

Found by Linux Verification Center (linuxtesting.org) with Syzkaller.

Cc: stable@vger.kernel.org
Signed-off-by: Artem Sadovnikov <ancowi69@gmail.com>
---
 fs/jfs/xattr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
index 8ef8dfc3c194..95bcbbf7359c 100644
--- a/fs/jfs/xattr.c
+++ b/fs/jfs/xattr.c
@@ -557,7 +557,7 @@ static int ea_get(struct inode *inode, struct ea_buffer *ea_buf, int min_size)
 
       size_check:
 	if (EALIST_SIZE(ea_buf->xattr) != ea_size) {
-		int size = min_t(int, EALIST_SIZE(ea_buf->xattr), ea_size);
+		int size = clamp_t(int, ea_size, 0, EALIST_SIZE(ea_buf->xattr));
 
 		printk(KERN_ERR "ea_get: invalid extended attribute\n");
 		print_hex_dump(KERN_ERR, "", DUMP_PREFIX_ADDRESS, 16, 1,
-- 
2.43.0




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
